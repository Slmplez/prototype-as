/*
 * Decompiled with CFR 0.152.
 */
package org.apache.xerces.impl.xs.models;

import java.util.HashMap;
import java.util.Vector;
import org.apache.xerces.impl.dtd.models.CMNode;
import org.apache.xerces.impl.dtd.models.CMStateSet;
import org.apache.xerces.impl.xs.SubstitutionGroupHandler;
import org.apache.xerces.impl.xs.XMLSchemaException;
import org.apache.xerces.impl.xs.XSConstraints;
import org.apache.xerces.impl.xs.XSElementDecl;
import org.apache.xerces.impl.xs.XSWildcardDecl;
import org.apache.xerces.impl.xs.models.XSCMBinOp;
import org.apache.xerces.impl.xs.models.XSCMLeaf;
import org.apache.xerces.impl.xs.models.XSCMRepeatingLeaf;
import org.apache.xerces.impl.xs.models.XSCMUniOp;
import org.apache.xerces.impl.xs.models.XSCMValidator;
import org.apache.xerces.xni.QName;

public class XSDFACM
implements XSCMValidator {
    private static final boolean DEBUG = false;
    private static final boolean DEBUG_VALIDATE_CONTENT = false;
    private Object[] fElemMap = null;
    private int[] fElemMapType = null;
    private int[] fElemMapId = null;
    private int fElemMapSize = 0;
    private boolean[] fFinalStateFlags = null;
    private CMStateSet[] fFollowList = null;
    private CMNode fHeadNode = null;
    private int fLeafCount = 0;
    private XSCMLeaf[] fLeafList = null;
    private int[] fLeafListType = null;
    private int[][] fTransTable = null;
    private Occurence[] fCountingStates = null;
    private int fTransTableSize = 0;
    private boolean fIsCompactedForUPA;
    private static long time = 0L;

    public XSDFACM(CMNode cMNode, int n) {
        this.fLeafCount = n;
        this.fIsCompactedForUPA = cMNode.isCompactedForUPA();
        this.buildDFA(cMNode);
    }

    public boolean isFinalState(int n) {
        return n < 0 ? false : this.fFinalStateFlags[n];
    }

    public Object oneTransition(QName qName, int[] nArray, SubstitutionGroupHandler substitutionGroupHandler) {
        int n = nArray[0];
        if (n == -1 || n == -2) {
            if (n == -1) {
                nArray[0] = -2;
            }
            return this.findMatchingDecl(qName, substitutionGroupHandler);
        }
        int n2 = 0;
        int n3 = 0;
        Object object = null;
        while (n3 < this.fElemMapSize) {
            n2 = this.fTransTable[n][n3];
            if (n2 != -1) {
                int n4 = this.fElemMapType[n3];
                if (n4 == 1) {
                    object = substitutionGroupHandler.getMatchingElemDecl(qName, (XSElementDecl)this.fElemMap[n3]);
                    if (object != null) {
                        break;
                    }
                } else if (n4 == 2 && ((XSWildcardDecl)this.fElemMap[n3]).allowNamespace(qName.uri)) {
                    object = this.fElemMap[n3];
                    break;
                }
            }
            ++n3;
        }
        if (n3 == this.fElemMapSize) {
            nArray[1] = nArray[0];
            nArray[0] = -1;
            return this.findMatchingDecl(qName, substitutionGroupHandler);
        }
        if (this.fCountingStates != null) {
            Occurence occurence = this.fCountingStates[n];
            if (occurence != null) {
                if (n == n2) {
                    nArray[2] = nArray[2] + 1;
                    if (nArray[2] > occurence.maxOccurs && occurence.maxOccurs != -1) {
                        return this.findMatchingDecl(qName, nArray, substitutionGroupHandler, n3);
                    }
                } else {
                    if (nArray[2] < occurence.minOccurs) {
                        nArray[1] = nArray[0];
                        nArray[0] = -1;
                        return this.findMatchingDecl(qName, substitutionGroupHandler);
                    }
                    occurence = this.fCountingStates[n2];
                    if (occurence != null) {
                        nArray[2] = n3 == occurence.elemIndex ? 1 : 0;
                    }
                }
            } else {
                occurence = this.fCountingStates[n2];
                if (occurence != null) {
                    nArray[2] = n3 == occurence.elemIndex ? 1 : 0;
                }
            }
        }
        nArray[0] = n2;
        return object;
    }

    Object findMatchingDecl(QName qName, SubstitutionGroupHandler substitutionGroupHandler) {
        XSElementDecl xSElementDecl = null;
        int n = 0;
        while (n < this.fElemMapSize) {
            int n2 = this.fElemMapType[n];
            if (n2 == 1) {
                xSElementDecl = substitutionGroupHandler.getMatchingElemDecl(qName, (XSElementDecl)this.fElemMap[n]);
                if (xSElementDecl != null) {
                    return xSElementDecl;
                }
            } else if (n2 == 2 && ((XSWildcardDecl)this.fElemMap[n]).allowNamespace(qName.uri)) {
                return this.fElemMap[n];
            }
            ++n;
        }
        return null;
    }

    Object findMatchingDecl(QName qName, int[] nArray, SubstitutionGroupHandler substitutionGroupHandler, int n) {
        int n2 = nArray[0];
        int n3 = 0;
        Object object = null;
        while (++n < this.fElemMapSize) {
            n3 = this.fTransTable[n2][n];
            if (n3 == -1) continue;
            int n4 = this.fElemMapType[n];
            if (n4 == 1) {
                object = substitutionGroupHandler.getMatchingElemDecl(qName, (XSElementDecl)this.fElemMap[n]);
                if (object == null) continue;
                break;
            }
            if (n4 != 2 || !((XSWildcardDecl)this.fElemMap[n]).allowNamespace(qName.uri)) continue;
            object = this.fElemMap[n];
            break;
        }
        if (n == this.fElemMapSize) {
            nArray[1] = nArray[0];
            nArray[0] = -1;
            return this.findMatchingDecl(qName, substitutionGroupHandler);
        }
        nArray[0] = n3;
        Occurence occurence = this.fCountingStates[n3];
        if (occurence != null) {
            nArray[2] = n == occurence.elemIndex ? 1 : 0;
        }
        return object;
    }

    public int[] startContentModel() {
        return new int[3];
    }

    public boolean endContentModel(int[] nArray) {
        int n = nArray[0];
        if (this.fFinalStateFlags[n]) {
            Occurence occurence;
            return this.fCountingStates == null || (occurence = this.fCountingStates[n]) == null || nArray[2] >= occurence.minOccurs;
        }
        return false;
    }

    private void buildDFA(CMNode cMNode) {
        int n;
        Object object;
        int n2;
        int n3;
        int n4 = this.fLeafCount;
        XSCMLeaf xSCMLeaf = new XSCMLeaf(1, null, -1, this.fLeafCount++);
        this.fHeadNode = new XSCMBinOp(102, cMNode, xSCMLeaf);
        this.fLeafList = new XSCMLeaf[this.fLeafCount];
        this.fLeafListType = new int[this.fLeafCount];
        this.postTreeBuildInit(this.fHeadNode);
        this.fFollowList = new CMStateSet[this.fLeafCount];
        int n5 = 0;
        while (n5 < this.fLeafCount) {
            this.fFollowList[n5] = new CMStateSet(this.fLeafCount);
            ++n5;
        }
        this.calcFollowList(this.fHeadNode);
        this.fElemMap = new Object[this.fLeafCount];
        this.fElemMapType = new int[this.fLeafCount];
        this.fElemMapId = new int[this.fLeafCount];
        this.fElemMapSize = 0;
        Occurence[] occurenceArray = null;
        int n6 = 0;
        while (n6 < this.fLeafCount) {
            this.fElemMap[n6] = null;
            int n7 = 0;
            n3 = this.fLeafList[n6].getParticleId();
            while (n7 < this.fElemMapSize) {
                if (n3 == this.fElemMapId[n7]) break;
                ++n7;
            }
            if (n7 == this.fElemMapSize) {
                XSCMLeaf xSCMLeaf2 = this.fLeafList[n6];
                this.fElemMap[this.fElemMapSize] = xSCMLeaf2.getLeaf();
                if (xSCMLeaf2 instanceof XSCMRepeatingLeaf) {
                    if (occurenceArray == null) {
                        occurenceArray = new Occurence[this.fLeafCount];
                    }
                    occurenceArray[this.fElemMapSize] = new Occurence((XSCMRepeatingLeaf)xSCMLeaf2, this.fElemMapSize);
                }
                this.fElemMapType[this.fElemMapSize] = this.fLeafListType[n6];
                this.fElemMapId[this.fElemMapSize] = n3;
                ++this.fElemMapSize;
            }
            ++n6;
        }
        --this.fElemMapSize;
        int[] nArray = new int[this.fLeafCount + this.fElemMapSize];
        n3 = 0;
        int n8 = 0;
        while (n8 < this.fElemMapSize) {
            n2 = this.fElemMapId[n8];
            int n9 = 0;
            while (n9 < this.fLeafCount) {
                if (n2 == this.fLeafList[n9].getParticleId()) {
                    nArray[n3++] = n9;
                }
                ++n9;
            }
            nArray[n3++] = -1;
            ++n8;
        }
        n2 = this.fLeafCount * 4;
        CMStateSet[] cMStateSetArray = new CMStateSet[n2];
        this.fFinalStateFlags = new boolean[n2];
        this.fTransTable = new int[n2][];
        CMStateSet cMStateSet = this.fHeadNode.firstPos();
        int n10 = 0;
        int n11 = 0;
        this.fTransTable[n11] = this.makeDefStateList();
        cMStateSetArray[n11] = cMStateSet;
        ++n11;
        HashMap<Object, Integer> hashMap = new HashMap<Object, Integer>();
        while (n10 < n11) {
            cMStateSet = cMStateSetArray[n10];
            int[] nArray2 = this.fTransTable[n10];
            this.fFinalStateFlags[n10] = cMStateSet.getBit(n4);
            ++n10;
            object = null;
            n = 0;
            int n12 = 0;
            while (n12 < this.fElemMapSize) {
                if (object == null) {
                    object = new CMStateSet(this.fLeafCount);
                } else {
                    ((CMStateSet)object).zeroBits();
                }
                int n13 = nArray[n++];
                while (n13 != -1) {
                    if (cMStateSet.getBit(n13)) {
                        ((CMStateSet)object).union(this.fFollowList[n13]);
                    }
                    n13 = nArray[n++];
                }
                if (!((CMStateSet)object).isEmpty()) {
                    int n14;
                    Integer n15 = (Integer)hashMap.get(object);
                    int n16 = n14 = n15 == null ? n11 : n15;
                    if (n14 == n11) {
                        cMStateSetArray[n11] = object;
                        this.fTransTable[n11] = this.makeDefStateList();
                        hashMap.put(object, new Integer(n11));
                        ++n11;
                        object = null;
                    }
                    nArray2[n12] = n14;
                    if (n11 == n2) {
                        int n17 = (int)((double)n2 * 1.5);
                        CMStateSet[] cMStateSetArray2 = new CMStateSet[n17];
                        boolean[] blArray = new boolean[n17];
                        int[][] nArrayArray = new int[n17][];
                        System.arraycopy(cMStateSetArray, 0, cMStateSetArray2, 0, n2);
                        System.arraycopy(this.fFinalStateFlags, 0, blArray, 0, n2);
                        System.arraycopy(this.fTransTable, 0, nArrayArray, 0, n2);
                        n2 = n17;
                        cMStateSetArray = cMStateSetArray2;
                        this.fFinalStateFlags = blArray;
                        this.fTransTable = nArrayArray;
                    }
                }
                ++n12;
            }
        }
        if (occurenceArray != null) {
            this.fCountingStates = new Occurence[n11];
            int n18 = 0;
            while (n18 < n11) {
                object = this.fTransTable[n18];
                n = 0;
                while (n < ((int[])object).length) {
                    if (n18 == object[n]) {
                        this.fCountingStates[n18] = occurenceArray[n];
                        break;
                    }
                    ++n;
                }
                ++n18;
            }
        }
        this.fHeadNode = null;
        this.fLeafList = null;
        this.fFollowList = null;
        this.fLeafListType = null;
        this.fElemMapId = null;
    }

    private void calcFollowList(CMNode cMNode) {
        if (cMNode.type() == 101) {
            this.calcFollowList(((XSCMBinOp)cMNode).getLeft());
            this.calcFollowList(((XSCMBinOp)cMNode).getRight());
        } else if (cMNode.type() == 102) {
            this.calcFollowList(((XSCMBinOp)cMNode).getLeft());
            this.calcFollowList(((XSCMBinOp)cMNode).getRight());
            CMStateSet cMStateSet = ((XSCMBinOp)cMNode).getLeft().lastPos();
            CMStateSet cMStateSet2 = ((XSCMBinOp)cMNode).getRight().firstPos();
            int n = 0;
            while (n < this.fLeafCount) {
                if (cMStateSet.getBit(n)) {
                    this.fFollowList[n].union(cMStateSet2);
                }
                ++n;
            }
        } else if (cMNode.type() == 4 || cMNode.type() == 6) {
            this.calcFollowList(((XSCMUniOp)cMNode).getChild());
            CMStateSet cMStateSet = cMNode.firstPos();
            CMStateSet cMStateSet3 = cMNode.lastPos();
            int n = 0;
            while (n < this.fLeafCount) {
                if (cMStateSet3.getBit(n)) {
                    this.fFollowList[n].union(cMStateSet);
                }
                ++n;
            }
        } else if (cMNode.type() == 5) {
            this.calcFollowList(((XSCMUniOp)cMNode).getChild());
        }
    }

    private void dumpTree(CMNode cMNode, int n) {
        int n2 = 0;
        while (n2 < n) {
            System.out.print("   ");
            ++n2;
        }
        int n3 = cMNode.type();
        switch (n3) {
            case 101: 
            case 102: {
                if (n3 == 101) {
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
                this.dumpTree(((XSCMBinOp)cMNode).getLeft(), n + 1);
                this.dumpTree(((XSCMBinOp)cMNode).getRight(), n + 1);
                break;
            }
            case 4: 
            case 5: 
            case 6: {
                System.out.print("Rep Node ");
                if (cMNode.isNullable()) {
                    System.out.print("Nullable ");
                }
                System.out.print("firstPos=");
                System.out.print(cMNode.firstPos().toString());
                System.out.print(" lastPos=");
                System.out.println(cMNode.lastPos().toString());
                this.dumpTree(((XSCMUniOp)cMNode).getChild(), n + 1);
                break;
            }
            case 1: {
                System.out.print("Leaf: (pos=" + ((XSCMLeaf)cMNode).getPosition() + "), " + "(elemIndex=" + ((XSCMLeaf)cMNode).getLeaf() + ") ");
                if (cMNode.isNullable()) {
                    System.out.print(" Nullable ");
                }
                System.out.print("firstPos=");
                System.out.print(cMNode.firstPos().toString());
                System.out.print(" lastPos=");
                System.out.println(cMNode.lastPos().toString());
                break;
            }
            case 2: {
                System.out.print("Any Node: ");
                System.out.print("firstPos=");
                System.out.print(cMNode.firstPos().toString());
                System.out.print(" lastPos=");
                System.out.println(cMNode.lastPos().toString());
                break;
            }
            default: {
                throw new RuntimeException("ImplementationMessages.VAL_NIICM");
            }
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

    private void postTreeBuildInit(CMNode cMNode) throws RuntimeException {
        cMNode.setMaxStates(this.fLeafCount);
        XSCMLeaf xSCMLeaf = null;
        int n = 0;
        if (cMNode.type() == 2) {
            xSCMLeaf = (XSCMLeaf)cMNode;
            n = xSCMLeaf.getPosition();
            this.fLeafList[n] = xSCMLeaf;
            this.fLeafListType[n] = 2;
        } else if (cMNode.type() == 101 || cMNode.type() == 102) {
            this.postTreeBuildInit(((XSCMBinOp)cMNode).getLeft());
            this.postTreeBuildInit(((XSCMBinOp)cMNode).getRight());
        } else if (cMNode.type() == 4 || cMNode.type() == 6 || cMNode.type() == 5) {
            this.postTreeBuildInit(((XSCMUniOp)cMNode).getChild());
        } else if (cMNode.type() == 1) {
            xSCMLeaf = (XSCMLeaf)cMNode;
            n = xSCMLeaf.getPosition();
            this.fLeafList[n] = xSCMLeaf;
            this.fLeafListType[n] = 1;
        } else {
            throw new RuntimeException("ImplementationMessages.VAL_NIICM");
        }
    }

    public boolean checkUniqueParticleAttribution(SubstitutionGroupHandler substitutionGroupHandler) throws XMLSchemaException {
        Object object;
        int n;
        int n2;
        byte[][] byArray = new byte[this.fElemMapSize][this.fElemMapSize];
        int n3 = 0;
        while (n3 < this.fTransTable.length && this.fTransTable[n3] != null) {
            n2 = 0;
            while (n2 < this.fElemMapSize) {
                n = n2 + 1;
                while (n < this.fElemMapSize) {
                    if (this.fTransTable[n3][n2] != -1 && this.fTransTable[n3][n] != -1 && byArray[n2][n] == 0) {
                        byArray[n2][n] = XSConstraints.overlapUPA(this.fElemMap[n2], this.fElemMap[n], substitutionGroupHandler) ? (this.fCountingStates != null && (object = this.fCountingStates[n3]) != null && this.fTransTable[n3][n2] == n3 ^ this.fTransTable[n3][n] == n3 && ((Occurence)object).minOccurs == ((Occurence)object).maxOccurs ? -1 : 1) : -1;
                    }
                    ++n;
                }
                ++n2;
            }
            ++n3;
        }
        n2 = 0;
        while (n2 < this.fElemMapSize) {
            n = 0;
            while (n < this.fElemMapSize) {
                if (byArray[n2][n] == 1) {
                    throw new XMLSchemaException("cos-nonambig", new Object[]{this.fElemMap[n2].toString(), this.fElemMap[n].toString()});
                }
                ++n;
            }
            ++n2;
        }
        n = 0;
        while (n < this.fElemMapSize) {
            if (this.fElemMapType[n] == 2) {
                object = (XSWildcardDecl)this.fElemMap[n];
                if (((XSWildcardDecl)object).fType == 3 || ((XSWildcardDecl)object).fType == 2) {
                    return true;
                }
            }
            ++n;
        }
        return false;
    }

    public Vector whatCanGoHere(int[] nArray) {
        int n = nArray[0];
        if (n < 0) {
            n = nArray[1];
        }
        Occurence occurence = this.fCountingStates != null ? this.fCountingStates[n] : null;
        int n2 = nArray[2];
        Vector<Object> vector = new Vector<Object>();
        int n3 = 0;
        while (n3 < this.fElemMapSize) {
            int n4 = this.fTransTable[n][n3];
            if (!(n4 == -1 || occurence != null && (n == n4 ? n2 >= occurence.maxOccurs && occurence.maxOccurs != -1 : n2 < occurence.minOccurs))) {
                vector.addElement(this.fElemMap[n3]);
            }
            ++n3;
        }
        return vector;
    }

    public boolean isCompactedForUPA() {
        return this.fIsCompactedForUPA;
    }

    static final class Occurence {
        final int minOccurs;
        final int maxOccurs;
        final int elemIndex;

        public Occurence(XSCMRepeatingLeaf xSCMRepeatingLeaf, int n) {
            this.minOccurs = xSCMRepeatingLeaf.getMinOccurs();
            this.maxOccurs = xSCMRepeatingLeaf.getMaxOccurs();
            this.elemIndex = n;
        }

        public String toString() {
            return "minOccurs=" + this.minOccurs + ";maxOccurs=" + (this.maxOccurs != -1 ? Integer.toString(this.maxOccurs) : "unbounded");
        }
    }
}

