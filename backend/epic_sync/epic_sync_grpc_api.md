# Protocol Documentation
<a name="top"></a>

## Table of Contents

- [epic_sync.proto](#epic_sync.proto)
    - [AddCardRequest](#.AddCardRequest)
    - [AddCardResult](#.AddCardResult)
    - [AddCommentToCardRequest](#.AddCommentToCardRequest)
    - [AddCommentToCardResult](#.AddCommentToCardResult)
    - [AddLabelToCardRequest](#.AddLabelToCardRequest)
    - [AddLabelToCardResult](#.AddLabelToCardResult)
    - [AssignCardToUserRequest](#.AssignCardToUserRequest)
    - [AssignCardToUserResult](#.AssignCardToUserResult)
    - [Card](#.Card)
    - [CardCommentsList](#.CardCommentsList)
    - [CardsList](#.CardsList)
    - [Comment](#.Comment)
    - [DeleteCardCommentRequest](#.DeleteCardCommentRequest)
    - [DeleteCardCommentResult](#.DeleteCardCommentResult)
    - [DeleteCardRequest](#.DeleteCardRequest)
    - [DeleteCardResult](#.DeleteCardResult)
    - [DeleteUserResult](#.DeleteUserResult)
    - [Label](#.Label)
    - [ListCardCommentsRequest](#.ListCardCommentsRequest)
    - [MoveCardToCategoryRequest](#.MoveCardToCategoryRequest)
    - [MoveCardToCategoryResult](#.MoveCardToCategoryResult)
    - [RemoveLabelFromCardRequest](#.RemoveLabelFromCardRequest)
    - [RemoveLabelFromCardResult](#.RemoveLabelFromCardResult)
    - [UpdateCardRequest](#.UpdateCardRequest)
    - [UpdateCardResult](#.UpdateCardResult)
    - [UpdateUserRequest](#.UpdateUserRequest)
    - [UpdateUserResult](#.UpdateUserResult)
    - [User](#.User)
    - [UserIdRequest](#.UserIdRequest)
    - [UsersList](#.UsersList)
    - [addUserRequest](#.addUserRequest)
    - [addUserResult](#.addUserResult)
    - [getCardsFiltered](#.getCardsFiltered)
  
    - [CardBacklog](#.CardBacklog)
    - [CardCategory](#.CardCategory)
    - [CardPriority](#.CardPriority)
    - [CardState](#.CardState)
    - [CardType](#.CardType)
  
    - [Server](#.Server)
  
- [Scalar Value Types](#scalar-value-types)



<a name="epic_sync.proto"></a>
<p align="right"><a href="#top">Top</a></p>

## epic_sync.proto



<a name=".AddCardRequest"></a>

### AddCardRequest



| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| card | [Card](#Card) |  |  |






<a name=".AddCardResult"></a>

### AddCardResult



| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| insertedCard | [bool](#bool) |  |  |






<a name=".AddCommentToCardRequest"></a>

### AddCommentToCardRequest



| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| card_id | [uint64](#uint64) |  |  |
| content | [string](#string) |  |  |






<a name=".AddCommentToCardResult"></a>

### AddCommentToCardResult



| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| success | [bool](#bool) |  |  |






<a name=".AddLabelToCardRequest"></a>

### AddLabelToCardRequest



| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| card_id | [uint64](#uint64) |  |  |
| label_id | [uint64](#uint64) |  |  |






<a name=".AddLabelToCardResult"></a>

### AddLabelToCardResult



| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| success | [bool](#bool) |  |  |






<a name=".AssignCardToUserRequest"></a>

### AssignCardToUserRequest



| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| card_id | [uint64](#uint64) |  |  |
| user_id | [uint64](#uint64) |  |  |






<a name=".AssignCardToUserResult"></a>

### AssignCardToUserResult



| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| success | [bool](#bool) |  |  |






<a name=".Card"></a>

### Card



| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| id | [uint64](#uint64) |  |  |
| title | [string](#string) |  |  |
| epic | [string](#string) |  |  |
| id_user | [uint64](#uint64) |  |  |
| category | [CardCategory](#CardCategory) |  |  |
| datecreated | [string](#string) |  |  |
| description | [string](#string) |  |  |
| priority | [CardPriority](#CardPriority) |  |  |
| state | [CardState](#CardState) |  |  |
| storypoints | [double](#double) |  |  |
| type | [CardType](#CardType) |  |  |
| backlog | [CardBacklog](#CardBacklog) |  |  |
| labels | [Label](#Label) | repeated |  |
| comments | [Comment](#Comment) | repeated |  |






<a name=".CardCommentsList"></a>

### CardCommentsList



| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| comments | [Comment](#Comment) | repeated |  |






<a name=".CardsList"></a>

### CardsList



| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| cards | [Card](#Card) | repeated |  |






<a name=".Comment"></a>

### Comment



| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| id | [uint64](#uint64) |  |  |
| id_card | [uint64](#uint64) |  |  |
| id_user | [uint64](#uint64) |  |  |
| date | [string](#string) |  |  |
| content | [string](#string) |  |  |
| parent | [uint64](#uint64) |  |  |






<a name=".DeleteCardCommentRequest"></a>

### DeleteCardCommentRequest



| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| card_id | [uint64](#uint64) |  |  |
| comment_id | [uint64](#uint64) |  |  |






<a name=".DeleteCardCommentResult"></a>

### DeleteCardCommentResult



| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| success | [bool](#bool) |  |  |






<a name=".DeleteCardRequest"></a>

### DeleteCardRequest



| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| id_card | [uint64](#uint64) |  |  |






<a name=".DeleteCardResult"></a>

### DeleteCardResult



| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| deletedCard | [bool](#bool) |  |  |






<a name=".DeleteUserResult"></a>

### DeleteUserResult



| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| success | [bool](#bool) |  | Puedes agregar más información sobre el resultado si es necesario |






<a name=".Label"></a>

### Label



| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| id | [uint64](#uint64) |  |  |
| name | [string](#string) |  |  |






<a name=".ListCardCommentsRequest"></a>

### ListCardCommentsRequest



| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| card_id | [uint64](#uint64) |  |  |






<a name=".MoveCardToCategoryRequest"></a>

### MoveCardToCategoryRequest



| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| card_id | [uint64](#uint64) |  |  |
| category | [CardCategory](#CardCategory) |  |  |






<a name=".MoveCardToCategoryResult"></a>

### MoveCardToCategoryResult



| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| success | [bool](#bool) |  |  |






<a name=".RemoveLabelFromCardRequest"></a>

### RemoveLabelFromCardRequest



| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| card_id | [uint64](#uint64) |  |  |
| label_id | [uint64](#uint64) |  |  |






<a name=".RemoveLabelFromCardResult"></a>

### RemoveLabelFromCardResult



| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| success | [bool](#bool) |  |  |






<a name=".UpdateCardRequest"></a>

### UpdateCardRequest



| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| card | [Card](#Card) |  |  |






<a name=".UpdateCardResult"></a>

### UpdateCardResult



| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| updatedCard | [bool](#bool) |  |  |






<a name=".UpdateUserRequest"></a>

### UpdateUserRequest



| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| id | [uint64](#uint64) |  |  |
| name | [string](#string) |  |  |
| email | [string](#string) |  |  |
| token | [string](#string) |  |  |
| isAdmin | [bool](#bool) |  | Agrega cualquier otro campo que desees actualizar |






<a name=".UpdateUserResult"></a>

### UpdateUserResult



| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| success | [bool](#bool) |  | Puedes agregar más información sobre el resultado si es necesario |






<a name=".User"></a>

### User



| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| id | [uint64](#uint64) |  |  |
| name | [string](#string) |  |  |
| email | [string](#string) |  |  |
| token | [string](#string) |  |  |
| isAdmin | [bool](#bool) |  |  |






<a name=".UserIdRequest"></a>

### UserIdRequest



| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| id | [uint64](#uint64) |  |  |






<a name=".UsersList"></a>

### UsersList



| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| users | [User](#User) | repeated |  |






<a name=".addUserRequest"></a>

### addUserRequest



| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| email | [string](#string) |  |  |






<a name=".addUserResult"></a>

### addUserResult



| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| insertedEmail | [bool](#bool) |  |  |






<a name=".getCardsFiltered"></a>

### getCardsFiltered



| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| category | [CardCategory](#CardCategory) |  |  |
| priority | [CardPriority](#CardPriority) |  |  |
| state | [CardState](#CardState) |  |  |
| type | [CardType](#CardType) |  |  |
| backlog | [CardBacklog](#CardBacklog) |  |  |





 


<a name=".CardBacklog"></a>

### CardBacklog


| Name | Number | Description |
| ---- | ------ | ----------- |
| UNKNOWN_B | 0 |  |
| True | 1 |  |
| False | 2 |  |



<a name=".CardCategory"></a>

### CardCategory


| Name | Number | Description |
| ---- | ------ | ----------- |
| UNKNOWN_C | 0 |  |
| Roadmap | 1 |  |
| Proyectos | 2 |  |



<a name=".CardPriority"></a>

### CardPriority


| Name | Number | Description |
| ---- | ------ | ----------- |
| UNKNOWN_P | 0 |  |
| Alta | 1 |  |
| Media | 2 |  |
| Baja | 3 |  |



<a name=".CardState"></a>

### CardState


| Name | Number | Description |
| ---- | ------ | ----------- |
| UNKNOWN_S | 0 |  |
| Pendiente | 1 |  |
| Proceso | 2 |  |
| Revisar | 3 |  |
| Listo | 4 |  |



<a name=".CardType"></a>

### CardType


| Name | Number | Description |
| ---- | ------ | ----------- |
| UNKNOWN_T | 0 |  |
| Tarea | 1 |  |
| Historia | 2 |  |
| Error | 3 |  |


 

 


<a name=".Server"></a>

### Server


| Method Name | Request Type | Response Type | Description |
| ----------- | ------------ | ------------- | ------------|
| AddUser | [.addUserRequest](#addUserRequest) | [.addUserResult](#addUserResult) |  |
| GetUserById | [.UserIdRequest](#UserIdRequest) | [.User](#User) |  |
| UpdateUser | [.UpdateUserRequest](#UpdateUserRequest) | [.UpdateUserResult](#UpdateUserResult) |  |
| DeleteUser | [.UserIdRequest](#UserIdRequest) | [.DeleteUserResult](#DeleteUserResult) |  |
| GetCards | [.getCardsFiltered](#getCardsFiltered) | [.CardsList](#CardsList) |  |
| AddCard | [.AddCardRequest](#AddCardRequest) | [.AddCardResult](#AddCardResult) |  |
| DeleteCard | [.DeleteCardRequest](#DeleteCardRequest) | [.DeleteCardResult](#DeleteCardResult) |  |
| UpdateCard | [.UpdateCardRequest](#UpdateCardRequest) | [.UpdateCardResult](#UpdateCardResult) |  |
| AddLabelToCard | [.AddLabelToCardRequest](#AddLabelToCardRequest) | [.AddLabelToCardResult](#AddLabelToCardResult) |  |
| RemoveLabelFromCard | [.RemoveLabelFromCardRequest](#RemoveLabelFromCardRequest) | [.RemoveLabelFromCardResult](#RemoveLabelFromCardResult) |  |
| ListCardComments | [.ListCardCommentsRequest](#ListCardCommentsRequest) | [.CardCommentsList](#CardCommentsList) |  |
| AddCommentToCard | [.AddCommentToCardRequest](#AddCommentToCardRequest) | [.AddCommentToCardResult](#AddCommentToCardResult) |  |
| DeleteCardComment | [.DeleteCardCommentRequest](#DeleteCardCommentRequest) | [.DeleteCardCommentResult](#DeleteCardCommentResult) |  |
| MoveCardToCategory | [.MoveCardToCategoryRequest](#MoveCardToCategoryRequest) | [.MoveCardToCategoryResult](#MoveCardToCategoryResult) |  |
| AssignCardToUser | [.AssignCardToUserRequest](#AssignCardToUserRequest) | [.AssignCardToUserResult](#AssignCardToUserResult) |  |

 



## Scalar Value Types

| .proto Type | Notes | C++ | Java | Python | Go | C# | PHP | Ruby |
| ----------- | ----- | --- | ---- | ------ | -- | -- | --- | ---- |
| <a name="double" /> double |  | double | double | float | float64 | double | float | Float |
| <a name="float" /> float |  | float | float | float | float32 | float | float | Float |
| <a name="int32" /> int32 | Uses variable-length encoding. Inefficient for encoding negative numbers – if your field is likely to have negative values, use sint32 instead. | int32 | int | int | int32 | int | integer | Bignum or Fixnum (as required) |
| <a name="int64" /> int64 | Uses variable-length encoding. Inefficient for encoding negative numbers – if your field is likely to have negative values, use sint64 instead. | int64 | long | int/long | int64 | long | integer/string | Bignum |
| <a name="uint32" /> uint32 | Uses variable-length encoding. | uint32 | int | int/long | uint32 | uint | integer | Bignum or Fixnum (as required) |
| <a name="uint64" /> uint64 | Uses variable-length encoding. | uint64 | long | int/long | uint64 | ulong | integer/string | Bignum or Fixnum (as required) |
| <a name="sint32" /> sint32 | Uses variable-length encoding. Signed int value. These more efficiently encode negative numbers than regular int32s. | int32 | int | int | int32 | int | integer | Bignum or Fixnum (as required) |
| <a name="sint64" /> sint64 | Uses variable-length encoding. Signed int value. These more efficiently encode negative numbers than regular int64s. | int64 | long | int/long | int64 | long | integer/string | Bignum |
| <a name="fixed32" /> fixed32 | Always four bytes. More efficient than uint32 if values are often greater than 2^28. | uint32 | int | int | uint32 | uint | integer | Bignum or Fixnum (as required) |
| <a name="fixed64" /> fixed64 | Always eight bytes. More efficient than uint64 if values are often greater than 2^56. | uint64 | long | int/long | uint64 | ulong | integer/string | Bignum |
| <a name="sfixed32" /> sfixed32 | Always four bytes. | int32 | int | int | int32 | int | integer | Bignum or Fixnum (as required) |
| <a name="sfixed64" /> sfixed64 | Always eight bytes. | int64 | long | int/long | int64 | long | integer/string | Bignum |
| <a name="bool" /> bool |  | bool | boolean | boolean | bool | bool | boolean | TrueClass/FalseClass |
| <a name="string" /> string | A string must always contain UTF-8 encoded or 7-bit ASCII text. | string | String | str/unicode | string | string | string | String (UTF-8) |
| <a name="bytes" /> bytes | May contain any arbitrary sequence of bytes. | string | ByteString | str | []byte | ByteString | string | String (ASCII-8BIT) |

