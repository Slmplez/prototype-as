/*
 * Decompiled with CFR 0.152.
 */
package org.apache.xerces.util;

import org.apache.xerces.util.AugmentationsImpl;
import org.apache.xerces.xni.Augmentations;
import org.apache.xerces.xni.QName;
import org.apache.xerces.xni.XMLAttributes;

public class XMLAttributesImpl
implements XMLAttributes {
    protected static final int TABLE_SIZE = 101;
    protected static final int SIZE_LIMIT = 20;
    protected boolean fNamespaces = true;
    protected int fLargeCount = 1;
    protected int fLength;
    protected Attribute[] fAttributes = new Attribute[4];
    protected Attribute[] fAttributeTableView;
    protected int[] fAttributeTableViewChainState;
    protected int fTableViewBuckets;
    protected boolean fIsTableViewConsistent;

    public XMLAttributesImpl() {
        this(101);
    }

    public XMLAttributesImpl(int n) {
        this.fTableViewBuckets = n;
        int n2 = 0;
        while (n2 < this.fAttributes.length) {
            this.fAttributes[n2] = new Attribute();
            ++n2;
        }
    }

    public void setNamespaces(boolean bl) {
        this.fNamespaces = bl;
    }

    public int addAttribute(QName qName, String string, String string2) {
        Attribute[] attributeArray;
        int n;
        if (this.fLength < 20) {
            int n2 = n = qName.uri != null && !qName.uri.equals("") ? this.getIndexFast(qName.uri, qName.localpart) : this.getIndexFast(qName.rawname);
            if (n == -1) {
                n = this.fLength;
                if (this.fLength++ == this.fAttributes.length) {
                    attributeArray = new Attribute[this.fAttributes.length + 4];
                    System.arraycopy(this.fAttributes, 0, attributeArray, 0, this.fAttributes.length);
                    int n3 = this.fAttributes.length;
                    while (n3 < attributeArray.length) {
                        attributeArray[n3] = new Attribute();
                        ++n3;
                    }
                    this.fAttributes = attributeArray;
                }
            }
        } else if (qName.uri == null || qName.uri.length() == 0 || (n = this.getIndexFast(qName.uri, qName.localpart)) == -1) {
            int n4;
            if (!this.fIsTableViewConsistent || this.fLength == 20) {
                this.prepareAndPopulateTableView();
                this.fIsTableViewConsistent = true;
            }
            if (this.fAttributeTableViewChainState[n4 = this.getTableViewBucket(qName.rawname)] != this.fLargeCount) {
                n = this.fLength;
                if (this.fLength++ == this.fAttributes.length) {
                    Attribute[] attributeArray2 = new Attribute[this.fAttributes.length << 1];
                    System.arraycopy(this.fAttributes, 0, attributeArray2, 0, this.fAttributes.length);
                    int n5 = this.fAttributes.length;
                    while (n5 < attributeArray2.length) {
                        attributeArray2[n5] = new Attribute();
                        ++n5;
                    }
                    this.fAttributes = attributeArray2;
                }
                this.fAttributeTableViewChainState[n4] = this.fLargeCount;
                this.fAttributes[n].next = null;
                this.fAttributeTableView[n4] = this.fAttributes[n];
            } else {
                Attribute attribute = this.fAttributeTableView[n4];
                while (attribute != null) {
                    if (attribute.name.rawname == qName.rawname) break;
                    attribute = attribute.next;
                }
                if (attribute == null) {
                    n = this.fLength;
                    if (this.fLength++ == this.fAttributes.length) {
                        Attribute[] attributeArray3 = new Attribute[this.fAttributes.length << 1];
                        System.arraycopy(this.fAttributes, 0, attributeArray3, 0, this.fAttributes.length);
                        int n6 = this.fAttributes.length;
                        while (n6 < attributeArray3.length) {
                            attributeArray3[n6] = new Attribute();
                            ++n6;
                        }
                        this.fAttributes = attributeArray3;
                    }
                    this.fAttributes[n].next = this.fAttributeTableView[n4];
                    this.fAttributeTableView[n4] = this.fAttributes[n];
                } else {
                    n = this.getIndexFast(qName.rawname);
                }
            }
        }
        attributeArray = this.fAttributes[n];
        attributeArray.name.setValues(qName);
        attributeArray.type = string;
        attributeArray.value = string2;
        attributeArray.nonNormalizedValue = string2;
        attributeArray.specified = false;
        attributeArray.augs.removeAllItems();
        return n;
    }

    public void removeAllAttributes() {
        this.fLength = 0;
    }

    public void removeAttributeAt(int n) {
        this.fIsTableViewConsistent = false;
        if (n < this.fLength - 1) {
            Attribute attribute = this.fAttributes[n];
            System.arraycopy(this.fAttributes, n + 1, this.fAttributes, n, this.fLength - n - 1);
            this.fAttributes[this.fLength - 1] = attribute;
        }
        --this.fLength;
    }

    public void setName(int n, QName qName) {
        this.fAttributes[n].name.setValues(qName);
    }

    public void getName(int n, QName qName) {
        qName.setValues(this.fAttributes[n].name);
    }

    public void setType(int n, String string) {
        this.fAttributes[n].type = string;
    }

    public void setValue(int n, String string) {
        Attribute attribute = this.fAttributes[n];
        attribute.value = string;
        attribute.nonNormalizedValue = string;
    }

    public void setNonNormalizedValue(int n, String string) {
        if (string == null) {
            string = this.fAttributes[n].value;
        }
        this.fAttributes[n].nonNormalizedValue = string;
    }

    public String getNonNormalizedValue(int n) {
        String string = this.fAttributes[n].nonNormalizedValue;
        return string;
    }

    public void setSpecified(int n, boolean bl) {
        this.fAttributes[n].specified = bl;
    }

    public boolean isSpecified(int n) {
        return this.fAttributes[n].specified;
    }

    public int getLength() {
        return this.fLength;
    }

    public String getType(int n) {
        if (n < 0 || n >= this.fLength) {
            return null;
        }
        return this.getReportableType(this.fAttributes[n].type);
    }

    public String getType(String string) {
        int n = this.getIndex(string);
        return n != -1 ? this.getReportableType(this.fAttributes[n].type) : null;
    }

    public String getValue(int n) {
        if (n < 0 || n >= this.fLength) {
            return null;
        }
        return this.fAttributes[n].value;
    }

    public String getValue(String string) {
        int n = this.getIndex(string);
        return n != -1 ? this.fAttributes[n].value : null;
    }

    public String getName(int n) {
        if (n < 0 || n >= this.fLength) {
            return null;
        }
        return this.fAttributes[n].name.rawname;
    }

    public int getIndex(String string) {
        int n = 0;
        while (n < this.fLength) {
            Attribute attribute = this.fAttributes[n];
            if (attribute.name.rawname != null && attribute.name.rawname.equals(string)) {
                return n;
            }
            ++n;
        }
        return -1;
    }

    public int getIndex(String string, String string2) {
        int n = 0;
        while (n < this.fLength) {
            Attribute attribute = this.fAttributes[n];
            if (attribute.name.localpart != null && attribute.name.localpart.equals(string2) && (string == attribute.name.uri || string != null && attribute.name.uri != null && attribute.name.uri.equals(string))) {
                return n;
            }
            ++n;
        }
        return -1;
    }

    public String getLocalName(int n) {
        if (!this.fNamespaces) {
            return "";
        }
        if (n < 0 || n >= this.fLength) {
            return null;
        }
        return this.fAttributes[n].name.localpart;
    }

    public String getQName(int n) {
        if (n < 0 || n >= this.fLength) {
            return null;
        }
        String string = this.fAttributes[n].name.rawname;
        return string != null ? string : "";
    }

    public String getType(String string, String string2) {
        if (!this.fNamespaces) {
            return null;
        }
        int n = this.getIndex(string, string2);
        return n != -1 ? this.getReportableType(this.fAttributes[n].type) : null;
    }

    public String getPrefix(int n) {
        if (n < 0 || n >= this.fLength) {
            return null;
        }
        String string = this.fAttributes[n].name.prefix;
        return string != null ? string : "";
    }

    public String getURI(int n) {
        if (n < 0 || n >= this.fLength) {
            return null;
        }
        String string = this.fAttributes[n].name.uri;
        return string;
    }

    public String getValue(String string, String string2) {
        int n = this.getIndex(string, string2);
        return n != -1 ? this.getValue(n) : null;
    }

    public Augmentations getAugmentations(String string, String string2) {
        int n = this.getIndex(string, string2);
        return n != -1 ? this.fAttributes[n].augs : null;
    }

    public Augmentations getAugmentations(String string) {
        int n = this.getIndex(string);
        return n != -1 ? this.fAttributes[n].augs : null;
    }

    public Augmentations getAugmentations(int n) {
        if (n < 0 || n >= this.fLength) {
            return null;
        }
        return this.fAttributes[n].augs;
    }

    public void setAugmentations(int n, Augmentations augmentations) {
        this.fAttributes[n].augs = augmentations;
    }

    public void setURI(int n, String string) {
        this.fAttributes[n].name.uri = string;
    }

    public void setSchemaId(int n, boolean bl) {
        this.fAttributes[n].schemaId = bl;
    }

    public boolean getSchemaId(int n) {
        if (n < 0 || n >= this.fLength) {
            return false;
        }
        return this.fAttributes[n].schemaId;
    }

    public boolean getSchemaId(String string) {
        int n = this.getIndex(string);
        return n != -1 ? this.fAttributes[n].schemaId : false;
    }

    public boolean getSchemaId(String string, String string2) {
        if (!this.fNamespaces) {
            return false;
        }
        int n = this.getIndex(string, string2);
        return n != -1 ? this.fAttributes[n].schemaId : false;
    }

    public int getIndexFast(String string) {
        int n = 0;
        while (n < this.fLength) {
            Attribute attribute = this.fAttributes[n];
            if (attribute.name.rawname == string) {
                return n;
            }
            ++n;
        }
        return -1;
    }

    public void addAttributeNS(QName qName, String string, String string2) {
        Attribute[] attributeArray;
        int n = this.fLength;
        if (this.fLength++ == this.fAttributes.length) {
            attributeArray = this.fLength < 20 ? new Attribute[this.fAttributes.length + 4] : new Attribute[this.fAttributes.length << 1];
            System.arraycopy(this.fAttributes, 0, attributeArray, 0, this.fAttributes.length);
            int n2 = this.fAttributes.length;
            while (n2 < attributeArray.length) {
                attributeArray[n2] = new Attribute();
                ++n2;
            }
            this.fAttributes = attributeArray;
        }
        attributeArray = this.fAttributes[n];
        attributeArray.name.setValues(qName);
        attributeArray.type = string;
        attributeArray.value = string2;
        attributeArray.nonNormalizedValue = string2;
        attributeArray.specified = false;
        attributeArray.augs.removeAllItems();
    }

    public QName checkDuplicatesNS() {
        if (this.fLength <= 20) {
            int n = 0;
            while (n < this.fLength - 1) {
                Attribute attribute = this.fAttributes[n];
                int n2 = n + 1;
                while (n2 < this.fLength) {
                    Attribute attribute2 = this.fAttributes[n2];
                    if (attribute.name.localpart == attribute2.name.localpart && attribute.name.uri == attribute2.name.uri) {
                        return attribute2.name;
                    }
                    ++n2;
                }
                ++n;
            }
        } else {
            this.fIsTableViewConsistent = false;
            this.prepareTableView();
            int n = this.fLength - 1;
            while (n >= 0) {
                Attribute attribute = this.fAttributes[n];
                int n3 = this.getTableViewBucket(attribute.name.localpart, attribute.name.uri);
                if (this.fAttributeTableViewChainState[n3] != this.fLargeCount) {
                    this.fAttributeTableViewChainState[n3] = this.fLargeCount;
                    attribute.next = null;
                    this.fAttributeTableView[n3] = attribute;
                } else {
                    Attribute attribute3 = this.fAttributeTableView[n3];
                    while (attribute3 != null) {
                        if (attribute3.name.localpart == attribute.name.localpart && attribute3.name.uri == attribute.name.uri) {
                            return attribute.name;
                        }
                        attribute3 = attribute3.next;
                    }
                    attribute.next = this.fAttributeTableView[n3];
                    this.fAttributeTableView[n3] = attribute;
                }
                --n;
            }
        }
        return null;
    }

    public int getIndexFast(String string, String string2) {
        int n = 0;
        while (n < this.fLength) {
            Attribute attribute = this.fAttributes[n];
            if (attribute.name.localpart == string2 && attribute.name.uri == string) {
                return n;
            }
            ++n;
        }
        return -1;
    }

    private String getReportableType(String string) {
        if (string.charAt(0) == '(') {
            return "NMTOKEN";
        }
        return string;
    }

    protected int getTableViewBucket(String string) {
        return (string.hashCode() & Integer.MAX_VALUE) % this.fTableViewBuckets;
    }

    protected int getTableViewBucket(String string, String string2) {
        if (string2 == null) {
            return (string.hashCode() & Integer.MAX_VALUE) % this.fTableViewBuckets;
        }
        return (string.hashCode() + string2.hashCode() & Integer.MAX_VALUE) % this.fTableViewBuckets;
    }

    protected void cleanTableView() {
        if (++this.fLargeCount < 0) {
            if (this.fAttributeTableViewChainState != null) {
                int n = this.fTableViewBuckets - 1;
                while (n >= 0) {
                    this.fAttributeTableViewChainState[n] = 0;
                    --n;
                }
            }
            this.fLargeCount = 1;
        }
    }

    protected void prepareTableView() {
        if (this.fAttributeTableView == null) {
            this.fAttributeTableView = new Attribute[this.fTableViewBuckets];
            this.fAttributeTableViewChainState = new int[this.fTableViewBuckets];
        } else {
            this.cleanTableView();
        }
    }

    protected void prepareAndPopulateTableView() {
        this.prepareTableView();
        int n = 0;
        while (n < this.fLength) {
            Attribute attribute = this.fAttributes[n];
            int n2 = this.getTableViewBucket(attribute.name.rawname);
            if (this.fAttributeTableViewChainState[n2] != this.fLargeCount) {
                this.fAttributeTableViewChainState[n2] = this.fLargeCount;
                attribute.next = null;
                this.fAttributeTableView[n2] = attribute;
            } else {
                attribute.next = this.fAttributeTableView[n2];
                this.fAttributeTableView[n2] = attribute;
            }
            ++n;
        }
    }

    static class Attribute {
        public QName name = new QName();
        public String type;
        public String value;
        public String nonNormalizedValue;
        public boolean specified;
        public boolean schemaId;
        public Augmentations augs = new AugmentationsImpl();
        public Attribute next;

        Attribute() {
        }
    }
}

