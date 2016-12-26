
package ua.kiev.police.model.enums;

public enum Rank {
    OFFICER("Officer"),
    DETECTIVE("Detective"),
    SERGEANT("Sergeant"),
    LIEUTENANT("Lieutenant"),
    CAPTAIN("Captain"),
    MAJOR("Major"),
    COLONEL("Colonel"),
    SHERIFF("Sheriff");

    private String title;

    Rank(String title) {
        this.title = title;
    }

    public String getTitle() {
        return title;
    }

    public static Rank[] VALUES = Rank.values();


    public String getValue() {
        return name();
    }

    public void setValue(String value) {}

}
