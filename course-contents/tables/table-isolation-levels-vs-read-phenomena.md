| Isolation level vs Read phenomenon     | Dirty read | Non-repeatable read | Phantom read |
|-------------------------------------|------------|---------------------|--------------|
| Serializable                        | no         | no                  | no           |
| Repeatable read                     | no         | no                  | yes          |
| Read committed                      | no         | yes                 | yes          |
| Read uncommitted                    | yes        | yes                 | yes          |