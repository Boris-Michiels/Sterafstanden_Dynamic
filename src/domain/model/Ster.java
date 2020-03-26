package domain.model;

public class Ster {
    private String naam, grootte;
    private double afstand;

    public Ster(String naam, String grootte, double afstand) {
        setNaam(naam);
        setGrootte(grootte);
        setAfstand(afstand);
    }

    public Ster() {

    }

    public void setNaam(String naam) {
        if (naam == null || naam.trim().isEmpty()) throw new IllegalArgumentException("Vul een naam in");
        this.naam = naam;
    }

    public void setGrootte(String grootte) {
        if (grootte == null || (!grootte.equals("Klein") && !grootte.equals("Gemiddeld") && !grootte.equals("Groot")))
            throw new IllegalArgumentException("Kies een geldige grootte");
        this.grootte = grootte;
    }

    public void setAfstand(double afstand) {
        if (afstand < 0) throw new IllegalArgumentException("Afstand moet positief zijn");
        this.afstand = afstand;
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