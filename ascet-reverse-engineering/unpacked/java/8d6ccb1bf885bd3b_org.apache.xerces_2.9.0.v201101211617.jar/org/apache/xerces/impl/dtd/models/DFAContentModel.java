/*
 * Decompiled with CFR 0.152.
 */
package org.apache.xerces.impl.dtd.models;

import java.util.HashMap;
import org.apache.xerces.impl.dtd.models.CMAny;
import org.apache.xerces.impl.dtd.models.CMBinOp;
import org.apache.xerces.impl.dtd.models.CMLeaf;
import org.apache.xerces.impl.dtd.models.CMNode;
import org.apache.xerces.impl.dtd.models.CMStateSet;
import org.apache.xerces.impl.dtd.models.CMUniOp;
import org.apache.xerces.impl.dtd.models.ContentModelValidator;
import org.apache.xerces.xni.QName;

public class DFAContentModel
implements ContentModelValidator {
    private static String fEpsilonString = "<<CMNODE_EPSILON>>";
    private static String fEOCString = "<<CMNODE_EOC>>";
    private static final boolean DEBUG_VALIDATE_CONTENT = false;
    private QName[] fElemMap = null;
    private int[] fElemMapType = null;
    private int fElemMapSize = 0;
    private boolean fMixed;
    private int fEOCPos = 0;
    private boolean[] fFinalStateFlags = null;
    private CMStateSet[] fFollowList = null;
    private CMNode fHeadNode = null;
    private int fLeafCount = 0;
    private CMLeaf[] fLeafList = null;
    private int[] fLeafListType = null;
    private int[][] fTransTable = null;
    private int fTransTableSize = 0;
    private boolean fEmptyContentIsValid = false;
    private final QName fQName = new QName();

    public DFAContentModel(CMNode cMNode, int n, boolean bl) {
        this.fLeafCount = n;
        this.fMixed = bl;
        this.buildDFA(cMNode);
    }

    public int validate(QName[] qNameArray, int n, int n2) {
        if (n2 == 0) {
            return this.fEmptyContentIsValid ? -1 : 0;
        }
        int n3 = 0;
        int n4 = 0;
        while (n4 < n2) {
            QName qName = qNameArray[n + n4];
            if (!this.fMixed || qName.localpart != null) {
                int n5 = 0;
                while (n5 < this.fElemMapSize) {
                    String string;
                    int n6 = this.fElemMapType[n5] & 0xF;
                    if (n6 == 0 ? this.fElemMap[n5].rawname == qName.rawname : (n6 == 6 ? (string = this.fElemMap[n5].uri) == null || string == qName.uri : (n6 == 8 ? qName.uri == null : n6 == 7 && this.fElemMap[n5].uri != qName.uri))) break;
                    ++n5;
                }
                if (n5 == this.fElemMapSize) {
                    return n4;
                }
                if ((n3 = this.fTransTable[n3][n5]) == -1) {
                    return n4;
                }
            }
            ++n4;
        }
        if (!this.fFinalStateFlags[n3]) {
            return n2;
        }
        return -1;
    }

    private void buildDFA(CMNode cMNode) {
        Object object;
        Object object2;
        int n;
        int n2;
        Object object3;
        this.fQName.setValues(null, fEOCString, fEOCString, null);
        CMLeaf cMLeaf = new CMLeaf(this.fQName);
        this.fHeadNode = new CMBinOp(5, cMNode, cMLeaf);
        this.fEOCPos = this.fLeafCount;
        cMLeaf.setPosition(this.fLeafCount++);
        this.fLeafList = new CMLeaf[this.fLeafCount];
        this.fLeafListType = new int[this.fLeafCount];
        this.postTreeBuildInit(this.fHeadNode, 0);
        this.fFollowList = new CMStateSet[this.fLeafCount];
        int n3 = 0;
        while (n3 < this.fLeafCount) {
            this.fFollowList[n3] = new CMStateSet(this.fLeafCount);
            ++n3;
        }
        this.calcFollowList(this.fHeadNode);
        this.fElemMap = new QName[this.fLeafCount];
        this.fElemMapType = new int[this.fLeafCount];
        this.fElemMapSize = 0;
        int n4 = 0;
        while (n4 < this.fLeafCount) {
            this.fElemMap[n4] = new QName();
            object3 = this.fLeafList[n4].getElement();
            n2 = 0;
            while (n2 < this.fElemMapSize) {
                if (this.fElemMap[n2].rawname == object3.rawname) break;
                ++n2;
            }
            if (n2 == this.fElemMapSize) {
                this.fElemMap[this.fElemMapSize].setValues((QName)object3);
                this.fElemMapType[this.fElemMapSize] = this.fLeafListType[n4];
                ++this.fElemMapSize;
            }
            ++n4;
        }
        object3 = new int[this.fLeafCount + this.fElemMapSize];
        n2 = 0;
        int n5 = 0;
        while (n5 < this.fElemMapSize) {
            n = 0;
            while (n < this.fLeafCount) {
                object2 = this.fLeafList[n].getElement();
                object = this.fElemMap[n5];
                if (object2.rawname == ((QName)object).rawname) {
                    object3[n2++] = n;
                }
                ++n;
            }
            object3[n2++] = -1;
            ++n5;
        }
        n = this.fLeafCount * 4;
        object2 = new CMStateSet[n];
        this.fFinalStateFlags = new boolean[n];
        this.fTransTable = new int[n][];
        object = this.fHeadNode.firstPos();
        int n6 = 0;
        int n7 = 0;
        this.fTransTable[n7] = this.makeDefStateList();
        object2[n7] = object;
        ++n7;
        HashMap<CMStateSet, Integer> hashMap = new HashMap<CMStateSet, Integer>();
        while (n6 < n7) {
            object = object2[n6];
            int[] nArray = this.fTransTable[n6];
            this.fFinalStateFlags[n6] = ((CMStateSet)object).getBit(this.fEOCPos);
            ++n6;
            CMStateSet cMStateSet = null;
            int n8 = 0;
            int n9 = 0;
            while (n9 < this.fElemMapSize) {
                if (cMStateSet == null) {
                    cMStateSet = new CMStateSet(this.fLeafCount);
                } else {
                    cMStateSet.zeroBits();
                }
                int n10 = object3[n8++];
                while (n10 != -1) {
                    if (((CMStateSet)object).getBit(n10)) {
                        cMStateSet.union(this.fFollowList[n10]);
                    }
                    n10 = object3[n8++];
                }
                if (!cMStateSet.isEmpty()) {
                    int n11;
                    Integer n12 = (Integer)hashMap.get(cMStateSet);
                    int n13 = n11 = n12 == null ? n7 : n12;
                    if (n11 == n7) {
                        object2[n7] = cMStateSet;
                        this.fTransTable[n7] = this.makeDefStateList();
                        hashMap.put(cMStateSet, new Integer(n7));
                        ++n7;
                        cMStateSet = null;
                    }
                    nArray[n9] = n11;
                    if (n7 == n) {
                        int n14 = (int)((double)n * 1.5);
                        CMStateSet[] cMStateSetArray = new CMStateSet[n14];
                        boolean[] blArray = new boolean[n14];
                        int[][] nArrayArray = new int[n14][];
                        System.arraycopy(object2, 0, cMStateSetArray, 0, n);
                        System.arraycopy(this.fFinalStateFlags, 0, blArray, 0, n);
                        System.arraycopy(this.fTransTable, 0, nArrayArray, 0, n);
                        n = n14;
                        object2 = cMStateSetArray;
                        this.fFinalStateFlags = blArray;
                        this.fTransTable = nArrayArray;
                    }
                }
                ++n9;
            }
        }
        this.fEmptyContentIsValid = ((CMBinOp)this.fHeadNode).getLeft().isNullable();
        this.fHeadNode = null;
        this.fLeafList = null;
        this.fFollowList = null;
    }

    private void calcFollowList(CMNode cMNode) {
        if (cMNode.type() == 4) {
            this.calcFollowList(((CMBinOp)cMNode).getLeft());
            this.calcFollowList(((CMBinOp)cMNode).getRight());
        } else if (cMNode.type() == 5) {
            this.calcFollowList(((CMBinOp)cMNode).getLeft());
            this.calcFollowList(((CMBinOp)cMNode).getRight());
            CMStateSet cMStateSet = ((CMBinOp)cMNode).getLeft().lastPos();
            CMStateSet cMStateSet2 = ((CMBinOp)cMNode).getRight().firstPos();
            int n = 0;
            while (n < this.fLeafCount) {
                if (cMStateSet.getBit(n)) {
                    this.fFollowList[n].union(cMStateSet2);
                }
                ++n;
            }
        } else if (cMNode.type() == 2 || cMNode.type() == 3) {
            this.calcFollowList(((CMUniOp)cMNode).getChild());
            CMStateSet cMStateSet = cMNode.firstPos();
            CMStateSet cMStateSet3 = cMNode.lastPos();
            int n = 0;
            while (n < this.fLeafCount) {
                if (cMStateSet3.getBit(n)) {
                    this.fFollowList[n].union(cMStateSet);
                }
                ++n;
            }
        } else if (cMNode.type() == 1) {
            this.calcFollowList(((CMUniOp)cMNode).getChild());
        }
    }

    private void dumpTree(CMNode cMNode, int n) {
        int n2 = 0;
        while (n2 < n) {
            System.out.print("   ");
            ++n2;
        }
        int n3 = cMNode.type();
        if (n3 == 4 || n3 == 5) {
            if (n3 == 4) {
                System.out.print("Choice Node ");
            } else {
                System.out.print("Seq Node ");
            }
            if (cMNode.isNullable()) {
                System.out.print("Nullable ");
            }
            System.out.print("firstPos=");
            System.out.print(cMNode.firstPos().toString());
            System.out.print(" lastPos=");
            System.out.println(cMNode.lastPos().toString());
            this.dumpTree(((CMBinOp)cMNode).getLeft(), n + 1);
            this.dumpTree(((CMBinOp)cMNode).getRight(), n + 1);
        } else if (cMNode.type() == 2) {
            System.out.print("Rep Node ");
            if (cMNode.isNullable()) {
                System.out.print("Nullable ");
            }
            System.out.print("firstPos=");
            System.out.print(cMNode.firstPos().toString());
            System.out.print(" lastPos=");
            System.out.println(cMNode.lastPos().toString());
            this.dumpTree(((CMUniOp)cMNode).getChild(), n + 1);
        } else if (cMNode.type() == 0) {
            System.out.print("Leaf: (pos=" + ((CMLeaf)cMNode).getPosition() + "), " + ((CMLeaf)cMNode).getElement() + "(elemIndex=" + ((CMLeaf)cMNode).getElement() + ") ");
            if (cMNode.isNullable()) {
                System.out.print(" Nullable ");
            }
            System.out.print("firstPos=");
            System.out.print(cMNode.firstPos().toString());
            System.out.print(" lastPos=");
            System.out.println(cMNode.lastPos().toString());
        } else {
            throw new RuntimeException("ImplementationMessages.VAL_NIICM");
        }
    }

    private int[] makeDefStateList() {
        int[] nArray = new int[this.fElemMapSize];
        int n = 0;
        while (n < this.fElemMapSize) {
            nArray[n] = -1;
            ++n;
        }
        return nArray;
    }

    private int postTreeBuildInit(CMNode cMNode, int n) {
        cMNode.setMaxStates(this.fLeafCount);
        if ((cMNode.type() & 0xF) == 6 || (cMNode.type() & 0xF) == 8 || (cMNode.type() & 0xF) == 7) {
            QName qName = new QName(null, null, null, ((CMAny)cMNode).getURI());
            this.fLeafList[n] = new CMLeaf(qName, ((CMAny)cMNode).getPosition());
            this.fLeafListType[n] = cMNode.type();
            ++n;
        } else if (cMNode.type() == 4 || cMNode.type() == 5) {
            n = this.postTreeBuildInit(((CMBinOp)cMNode).getLeft(), n);
            n = this.postTreeBuildInit(((CMBinOp)cMNode).getRight(), n);
        } else if (cMNode.type() == 2 || cMNode.type() == 3 || cMNode.type() == 1) {
            n = this.postTreeBuildInit(((CMUniOp)cMNode).getChild(), n);
        } else if (cMNode.type() == 0) {
            QName qName = ((CMLeaf)cMNode).getElement();
            if (qName.localpart != fEpsilonString) {
                this.fLeafList[n] = (CMLeaf)cMNode;
                this.fLeafListType[n] = 0;
                ++n;
            }
        } else {
            throw new RuntimeException("ImplementationMessages.VAL_NIICM: type=" + cMNode.type());
        }
        return n;
    }

    static {
        fEpsilonString = fEpsilonString.intern();
        fEOCString = fEOCString.intern();
    }
}

