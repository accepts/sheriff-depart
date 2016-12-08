
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


/*
public enum ContactType implements Serializable{
    PHONE("���."),
    MOBILE("���������"),
    HOME_PHONE("�������� ���."),
    SKYPE("Skype"){
        @Override
        public String toHtml(String value) {
            return "<a href='skype:" + value + "'>" + value + "</a>";
        }
    },
    MAIL("�����") {
        @Override
        public String toHtml(String value) {
            return "<a href='mailto:" + value + "'>" + value + "</a>";
        }
    },
    ICQ("ICQ");

    private String title;

    ContactType(String title) {
        this.title = title;
    }

    public String getTitle() {
        return title;
    }

    public static ContactType[] VALUES = ContactType.values();

    public String toHtml(String value) {
        return title + ": " + value;
    }
}
 */