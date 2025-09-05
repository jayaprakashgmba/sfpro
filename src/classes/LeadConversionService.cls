public class LeadConversionService {
    public static Boolean convertLead(Lead leadRecord) {
        if (leadRecord == null || leadRecord.Id == null) {
            return false;
        }
        Database.LeadConvert lc = new Database.LeadConvert();
        lc.setLeadId(leadRecord.Id);
        lc.setDoNotCreateOpportunity(true);
        Database.LeadConvertResult lcr = Database.convertLead(lc);
        return lcr.isSuccess();
    }
}