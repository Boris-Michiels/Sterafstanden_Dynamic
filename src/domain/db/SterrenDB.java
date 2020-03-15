package domain.db;

import domain.model.Ster;

import java.util.ArrayList;

public class SterrenDB {
    private ArrayList<Ster> sterren = new ArrayList<>();

    public SterrenDB() {
        Ster poolster = new Ster("Poolster", "Groot", 430);
        Ster procent = new Ster("Proxima Centauri", "Klein", 4.242);
        Ster sirius = new Ster("Sirius", "Groot", 8.583);

        sterren.add(poolster);
        sterren.add(procent);
        sterren.add(sirius);
    }

    public ArrayList<Ster> getSterren() {
        return sterren;
    }

    public void add(Ster ster) {
        if (ster == null) throw new IllegalArgumentException();
        for (Ster i : sterren) {
            if (ster.getNaam().equals(i.getNaam()))
                throw new IllegalArgumentException("Er bestaat al een ster met dezelfde naam");
        }
        sterren.add(ster);
    }

    public Ster getSter(String naam) {
        for (Ster i : sterren) {
            if (i.getNaam().equals(naam)) return i;
        }
        return null;
    }

    public Ster getVersteSter() {
        if (sterren.isEmpty()) throw new IllegalArgumentException("Geen sterren in de database");
        Ster v = null;
        double max = 0;
        for (Ster i : sterren) {
            if (i.getAfstand() > max) {
                max = i.getAfstand();
                v = i;
            }
        }
        return v;
    }

    public void verwijder(String naam) {
        Ster ster = getSter(naam);
        sterren.remove(ster);
    }
}