select load_extension('C:\Users\ati_o\Projects\my-courses\course-database\databases\sqlite-extensions\uuid.dll');

select uuid();


select 
  lower(
    hex(randomblob(4)) || '-' || hex(randomblob(2)) || '-' || '4' || 
    substr(hex( randomblob(2)), 2) || '-' || 
    substr('AB89', 1 + (abs(random()) % 4) , 1)  ||
    substr(hex(randomblob(2)), 2) || '-' || 
    hex(randomblob(6))
  ) GUID;
  