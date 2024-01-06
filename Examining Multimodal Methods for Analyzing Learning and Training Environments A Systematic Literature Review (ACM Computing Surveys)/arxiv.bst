FUNCTION {format.vol.num.pages}
{ volume empty$
    'skip$
    {  "Vol." volume tie.or.space.connect }% field.or.null
  if$
  number empty$
    'skip$
    { ", No." number tie.or.space.connect *
      volume empty$
        { "there's a number but no volume in " cite$ * warning$ }
        'skip$
      if$
    }
  if$
  pages empty$
    'skip$
    { duplicate$ empty$
        { pop$ format.pages }
        { ", pp.~" * pages n.dashify * }
      if$
    }
  if$
}