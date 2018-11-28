package cn.pojo;

public class Charge {
    private Integer id;

    private String name;

    private String concept;

    private String constitute;

    private String basis;

    private String standard_Of_Sentencing;

    private String lawexplain;

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name == null ? null : name.trim();
    }

    public String getConcept() {
        return concept;
    }

    public void setConcept(String concept) {
        this.concept = concept == null ? null : concept.trim();
    }

    public String getConstitute() {
        return constitute;
    }

    public void setConstitute(String constitute) {
        this.constitute = constitute == null ? null : constitute.trim();
    }

    public String getBasis() {
        return basis;
    }

    public void setBasis(String basis) {
        this.basis = basis == null ? null : basis.trim();
    }

    

    public String getStandard_Of_Sentencing() {
		return standard_Of_Sentencing;
	}

	public void setStandard_Of_Sentencing(String standard_Of_Sentencing) {
		this.standard_Of_Sentencing = standard_Of_Sentencing;
	}

	public String getLawexplain() {
        return lawexplain;
    }

    public void setLawexplain(String lawexplain) {
        this.lawexplain = lawexplain == null ? null : lawexplain.trim();
    }
}