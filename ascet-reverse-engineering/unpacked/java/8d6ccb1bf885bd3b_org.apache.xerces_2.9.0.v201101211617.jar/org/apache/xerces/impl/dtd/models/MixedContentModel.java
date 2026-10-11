/*
 * Decompiled with CFR 0.152.
 */
package org.apache.xerces.impl.dtd.models;

import org.apache.xerces.impl.dtd.models.ContentModelValidator;
import org.apache.xerces.xni.QName;

public class MixedContentModel
implements ContentModelValidator {
    private final int fCount;
    private final QName[] fChildren;
    private final int[] fChildrenType;
    private final boolean fOrdered;

    public MixedContentModel(QName[] qNameArray, int[] nArray, int n, int n2, boolean bl) {
        this.fCount = n2;
        this.fChildren = new QName[this.fCount];
        this.fChildrenType = new int[this.fCount];
        int n3 = 0;
        while (n3 < this.fCount) {
            this.fChildren[n3] = new QName(qNameArray[n + n3]);
            this.fChildrenType[n3] = nArray[n + n3];
            ++n3;
        }
        this.fOrdered = bl;
    }

    public int validate(QName[] qNameArray, int n, int n2) {
        if (this.fOrdered) {
            int n3 = 0;
            int n4 = 0;
            while (n4 < n2) {
                QName qName = qNameArray[n + n4];
                if (qName.localpart != null) {
                    String string;
                    int n5 = this.fChildrenType[n3];
                    if (n5 == 0 ? this.fChildren[n3].rawname != qNameArray[n + n4].rawname : (n5 == 6 ? (string = this.fChildren[n3].uri) != null && string != qNameArray[n4].uri : (n5 == 8 ? qNameArray[n4].uri != null : n5 == 7 && this.fChildren[n3].uri == qNameArray[n4].uri))) {
                        return n4;
                    }
                    ++n3;
                }
                ++n4;
            }
        } else {
            int n6 = 0;
            while (n6 < n2) {
                QName qName = qNameArray[n + n6];
                if (qName.localpart != null) {
                    int n7 = 0;
                    while (n7 < this.fCount) {
                        String string;
                        int n8 = this.fChildrenType[n7];
                        if (n8 == 0 ? qName.rawname == this.fChildren[n7].rawname : (n8 == 6 ? (string = this.fChildren[n7].uri) == null || string == qNameArray[n6].uri : (n8 == 8 ? qNameArray[n6].uri == null : n8 == 7 && this.fChildren[n7].uri != qNameArray[n6].uri))) break;
                        ++n7;
                    }
                    if (n7 == this.fCount) {
                        return n6;
                    }
                }
                ++n6;
            }
        }
        return -1;
    }
}

