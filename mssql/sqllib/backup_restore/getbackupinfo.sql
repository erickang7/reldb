--Description: Sample restore statement to get backup info from backup media.
--Author: Eric Kang

-- Restore Labelonly from disk = 'G:\sqlbackups\Device1\AdventureworkdDevice1.bak'
-- Restore Labelonly from disk = 'G:\sqlbackups\Device2\AdventureworksDevice2.bak'
-- Restore Labelonly from disk = 'G:\sqlbackups\Device3\AdventureworksDevice3.bak'


-- Restore Headeronly from disk = 'G:\sqlbackups\Device1\AdventureworkdDevice1.bak'
-- Restore Filelistonly from disk = 'G:\sqlbackups\Device1\AdventureworkdDevice1.bak'
-- Restore Verifyonly from DISK = N'G:\sqlbackups\Device1\AdventureworkdDevice1.bak',  
--                         DISK = N'G:\sqlbackups\Device3\AdventureWorksDevice3.bak',  
--                         DISK = N'G:\sqlbackups\Device2\AdventureWorksDevice2.bak'


-- Get all backupset information from msdb
SELECT database_name,name as [backupset], bs.[type], bf.physical_device_name, bs.backup_start_date
FROM msdb..backupset bs
join msdb..backupmediafamily bf on bs.media_set_id = bf.media_set_id 
order by backup_start_date desc

SELECT name, *
FROM msdb..backupmediaset

SELECT *
FROM msdb..backupmediafamily
--WHERE media_set_id = 6

--

-- N'/var/opt/mssql/backup/AdventureWorksLinux.bak' 

-- Restore Labelonly from disk = N'/var/opt/mssql/backup/AdventureWorksLinux.bak' 
-- Restore Headeronly from disk = N'/var/opt/mssql/backup/AdventureWorksLinux.bak' 
-- Restore Filelistonly from disk = N'/var/opt/mssql/backup/AdventureWorksLinux.bak' 
-- Restore Verifyonly from DISK = N'/var/opt/mssql/backup/AdventureWorksLinux.bak'  

