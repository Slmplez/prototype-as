/*
 * Decompiled with CFR 0.152.
 */
package org.apache.xerces.impl.dtd.models;

import org.apache.xerces.impl.dtd.models.ContentModelValidator;
import org.apache.xerces.xni.QName;

public class SimpleContentModel
implements ContentModelValidator {
    public static final short CHOICE = -1;
    public static final short SEQUENCE = -1;
    private final QName fFirstChild = new QName();
    private final QName fSecondChild = new QName();
    private final int fOperator;

    public SimpleContentModel(short s, QName qName, QName qName2) {
        this.fFirstChild.setValues(qName);
        if (qName2 != null) {
            this.fSecondChild.setValues(qName2);
        } else {
            this.fSecondChild.clear();
        }
        this.fOperator = s;
    }

    public int validate(QName[] qNameArray, int n, int n2) {
        switch (this.fOperator) {
            case 0: {
                if (n2 == 0) {
                    return 0;
                }
                if (qNameArray[n].rawname != this.fFirstChild.rawname) {
                    return 0;
                }
                if (n2 <= 1) break;
                return 1;
            }
            case 1: {
                if (n2 == 1 && qNameArray[n].rawname != this.fFirstChild.rawname) {
                    return 0;
                }
                if (n2 <= 1) break;
                return 1;
            }
            case 2: {
                if (n2 <= 0) break;
                int n3 = 0;
                while (n3 < n2) {
                    if (qNameArray[n + n3].rawname != this.fFirstChild.rawname) {
                        return n3;
                    }
                    ++n3;
                }
                break;
            }
            case 3: {
                if (n2 == 0) {
                    return 0;
                }
                int n4 = 0;
                while (n4 < n2) {
                    if (qNameArray[n + n4].rawname != this.fFirstChild.rawname) {
                        return n4;
                    }
                    ++n4;
                }
                break;
            }
            case 4: {
                if (n2 == 0) {
                    return 0;
                }
                if (qNameArray[n].rawname != this.fFirstChild.rawname && qNameArray[n].rawname != this.fSecondChild.rawname) {
                    return 0;
                }
                if (n2 <= 1) break;
                return 1;
            }
            case 5: {
                if (n2 == 2) {
                    if (qNameArray[n].rawname != this.fFirstChild.rawname) {
                        return 0;
                    }
                    if (qNameArray[n + 1].rawname == this.fSecondChild.rawname) break;
                    return 1;
                }
                if (n2 > 2) {
                    return 2;
                }
                return n2;
            }
            default: {
                throw new RuntimeException("ImplementationMessages.VAL_CST");
            }
        }
        return -1;
    }
}

