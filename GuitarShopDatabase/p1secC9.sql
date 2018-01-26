select 
CardNumber,
len(CardNumber) as LenthOfCardNumber,
right(CardNumber,4) as LastFourDigits,
'XXXX-XXXX-XXXX-'+SUBSTRING(CardNumber,13,16) as XXXVersion
from Orders