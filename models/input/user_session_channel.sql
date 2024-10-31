with user_sessions as (
    select
        userId,
        sessionId,
        channel
    from {{ source('raw_data', 'user_session_channel') }}
    where sessionId is not null
)

select *
from user_sessions