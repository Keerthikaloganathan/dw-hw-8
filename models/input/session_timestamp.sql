with sessions as (
    select
        sessionId,
        ts
    from {{ source('raw_data', 'session_timestamp') }}
    where sessionId is not null
)
select *
from sessions