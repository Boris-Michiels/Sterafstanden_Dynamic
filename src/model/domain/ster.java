package model.domain;

public class ster {
    private String naam, grootte;
    private double afstand;

    public ster(String naam, String grootte, double afstand) {
        if (naam == null || naam.trim().isEmpty()) throw new IllegalArgumentException("Naam mag niet leeg zijn.");
        this.naam = naam;
        setAfstand(afstand);
        setGrootte(grootte);
    }

    public void setAfstand(double afstand) {
        if (afstand < 0) throw new IllegalArgumentException("Afstand moet groter zijn dan 0.");
        this.afstand = afstand;
    }

    public void setGrootte(String grootte) {
        if (grootte.toLowerCase() != "klein" || grootte.toLowerCase() != "gemiddeld" || grootte.toLowerCase() != "groot") throw new IllegalStateException();
        this.grootte = grootte;
    }

    public String getNaam() {
        return this.naam;
    }

    public String getGrootte() {
        return this.grootte;
    }

    public double getAfstand() {
        return this.afstand;
    }

}
