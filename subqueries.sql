select *
from invoice
WHERE invoice_id IN (
  SELECT invoice_id
  from invoice_line
  where unit_price > .99
);

select *
from playlist_track
where track_id in (
  select playlist_track.track_id
  from playlist
  where name = 'Music'
  );