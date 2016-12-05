
package ua.kiev.police.model.enums;

public enum Range {
    OFFICER("������"),
    DETECTIVE("��������"),
    SERGEANT("�������"),
    LIEUTENANT("���������"),
    CAPTAIN("�������"),
    MAJOR("�����"),
    COLONEL("���������"),
    SHERIFF("�����");

    private String title;

    Range(String title) {
        this.title = title;
    }

    public String getTitle() {
        return title;
    }

    public static Range[] VALUES = Range.values();

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