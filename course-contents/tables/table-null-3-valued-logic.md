| p       | q       | p OR q  | p AND q | p = q   |
|---------|---------|---------|---------|---------|
| True    | True    | True    | True    | True    |
| True    | False   | True    | False   | False   |
| True    | Unknown | True    | Unknown | Unknown |
| False   | True    | True    | False   | False   |
| False   | False   | False   | False   | True    |
| False   | Unknown | Unknown | False   | Unknown |
| Unknown | True    | True    | Unknown | Unknown |
| Unknown | False   | Unknown | False   | Unknown |
| Unknown | Unknown | Unknown | Unknown | Unknown |