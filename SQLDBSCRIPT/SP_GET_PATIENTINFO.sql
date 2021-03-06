
-- =============================================
-- Author:		Sumeet Pattanaik
-- Create date: 29-10-2018
-- Description:	Get Patient record
-- =============================================
CREATE PROCEDURE [SP_GET_PATIENTINFO]
	-- Add the parameters for the stored procedure here
	@ID int 
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Retrive XML column value from procedure here
if (@ID > 0)
      begin
         Select PatientInfo from dbo.Tbl_PatientInformation where ID=@ID
      end
Else
     begin
        Select PatientInfo from dbo.Tbl_PatientInformation
     end
	
END
