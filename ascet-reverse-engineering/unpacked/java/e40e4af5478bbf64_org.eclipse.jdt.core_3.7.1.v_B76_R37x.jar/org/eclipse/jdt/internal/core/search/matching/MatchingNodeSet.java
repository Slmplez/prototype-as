/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.jdt.internal.core.search.matching;

import java.util.ArrayList;
import org.eclipse.jdt.internal.compiler.ast.ASTNode;
import org.eclipse.jdt.internal.compiler.util.HashtableOfLong;
import org.eclipse.jdt.internal.compiler.util.SimpleLookupTable;
import org.eclipse.jdt.internal.compiler.util.SimpleSet;
import org.eclipse.jdt.internal.core.util.Util;

public class MatchingNodeSet {
    SimpleLookupTable matchingNodes = new SimpleLookupTable(3);
    private HashtableOfLong matchingNodesKeys = new HashtableOfLong(3);
    static Integer EXACT_MATCH = new Integer(0);
    static Integer POTENTIAL_MATCH = new Integer(1);
    static Integer ERASURE_MATCH = new Integer(16);
    public boolean mustResolve;
    SimpleSet possibleMatchingNodesSet = new SimpleSet(7);
    private HashtableOfLong possibleMatchingNodesKeys = new HashtableOfLong(7);

    public MatchingNodeSet(boolean mustResolvePattern) {
        this.mustResolve = mustResolvePattern;
    }

    public int addMatch(ASTNode node, int matchLevel) {
        int maskedLevel = matchLevel & 0xF;
        switch (maskedLevel) {
            case 1: {
                if (matchLevel != maskedLevel) {
                    this.addTrustedMatch(node, new Integer(1 + (matchLevel & 0xFFFFFFF0)));
                    break;
                }
                this.addTrustedMatch(node, POTENTIAL_MATCH);
                break;
            }
            case 2: {
                this.addPossibleMatch(node);
                break;
            }
            case 4: {
                if (matchLevel != maskedLevel) {
                    this.addTrustedMatch(node, new Integer(16 + (matchLevel & 0xFFFFFFF0)));
                    break;
                }
                this.addTrustedMatch(node, ERASURE_MATCH);
                break;
            }
            case 3: {
                if (matchLevel != maskedLevel) {
                    this.addTrustedMatch(node, new Integer(0 + (matchLevel & 0xFFFFFFF0)));
                    break;
                }
                this.addTrustedMatch(node, EXACT_MATCH);
            }
        }
        return matchLevel;
    }

    public void addPossibleMatch(ASTNode node) {
        long key = ((long)node.sourceStart << 32) + (long)node.sourceEnd;
        ASTNode existing = (ASTNode)this.possibleMatchingNodesKeys.get(key);
        if (existing != null && existing.getClass().equals(node.getClass())) {
            this.possibleMatchingNodesSet.remove(existing);
        }
        this.possibleMatchingNodesSet.add(node);
        this.possibleMatchingNodesKeys.put(key, node);
    }

    public void addTrustedMatch(ASTNode node, boolean isExact) {
        this.addTrustedMatch(node, isExact ? EXACT_MATCH : POTENTIAL_MATCH);
    }

    void addTrustedMatch(ASTNode node, Integer level) {
        long key = ((long)node.sourceStart << 32) + (long)node.sourceEnd;
        ASTNode existing = (ASTNode)this.matchingNodesKeys.get(key);
        if (existing != null && existing.getClass().equals(node.getClass())) {
            this.matchingNodes.removeKey(existing);
        }
        this.matchingNodes.put(node, level);
        this.matchingNodesKeys.put(key, node);
    }

    protected boolean hasPossibleNodes(int start, int end) {
        ASTNode node;
        Object[] nodes = this.possibleMatchingNodesSet.values;
        int i = 0;
        int l = nodes.length;
        while (i < l) {
            node = (ASTNode)nodes[i];
            if (node != null && start <= node.sourceStart && node.sourceEnd <= end) {
                return true;
            }
            ++i;
        }
        nodes = this.matchingNodes.keyTable;
        i = 0;
        l = nodes.length;
        while (i < l) {
            node = (ASTNode)nodes[i];
            if (node != null && start <= node.sourceStart && node.sourceEnd <= end) {
                return true;
            }
            ++i;
        }
        return false;
    }

    protected ASTNode[] matchingNodes(int start, int end) {
        ArrayList<ASTNode> nodes = null;
        Object[] keyTable = this.matchingNodes.keyTable;
        int i = 0;
        int l = keyTable.length;
        while (i < l) {
            ASTNode node = (ASTNode)keyTable[i];
            if (node != null && start <= node.sourceStart && node.sourceEnd <= end) {
                if (nodes == null) {
                    nodes = new ArrayList<ASTNode>();
                }
                nodes.add(node);
            }
            ++i;
        }
        if (nodes == null) {
            return null;
        }
        Object[] result = new ASTNode[nodes.size()];
        nodes.toArray(result);
        Util.Comparer comparer = new Util.Comparer(){

            public int compare(Object o1, Object o2) {
                return ((ASTNode)o1).sourceStart - ((ASTNode)o2).sourceStart;
            }
        };
        Util.sort(result, comparer);
        return result;
    }

    public Object removePossibleMatch(ASTNode node) {
        long key = ((long)node.sourceStart << 32) + (long)node.sourceEnd;
        ASTNode existing = (ASTNode)this.possibleMatchingNodesKeys.get(key);
        if (existing == null) {
            return null;
        }
        this.possibleMatchingNodesKeys.put(key, null);
        return this.possibleMatchingNodesSet.remove(node);
    }

    public Object removeTrustedMatch(ASTNode node) {
        long key = ((long)node.sourceStart << 32) + (long)node.sourceEnd;
        ASTNode existing = (ASTNode)this.matchingNodesKeys.get(key);
        if (existing == null) {
            return null;
        }
        this.matchingNodesKeys.put(key, null);
        return this.matchingNodes.removeKey(node);
    }

    public String toString() {
        StringBuffer result = new StringBuffer();
        result.append("Exact matches:");
        Object[] keyTable = this.matchingNodes.keyTable;
        Object[] valueTable = this.matchingNodes.valueTable;
        int i = 0;
        int l = keyTable.length;
        while (i < l) {
            ASTNode node = (ASTNode)keyTable[i];
            if (node != null) {
                result.append("\n\t");
                switch ((Integer)valueTable[i]) {
                    case 0: {
                        result.append("ACCURATE_MATCH: ");
                        break;
                    }
                    case 1: {
                        result.append("INACCURATE_MATCH: ");
                        break;
                    }
                    case 16: {
                        result.append("ERASURE_MATCH: ");
                    }
                }
                node.print(0, result);
            }
            ++i;
        }
        result.append("\nPossible matches:");
        Object[] nodes = this.possibleMatchingNodesSet.values;
        int i2 = 0;
        int l2 = nodes.length;
        while (i2 < l2) {
            ASTNode node = (ASTNode)nodes[i2];
            if (node != null) {
                result.append("\nPOSSIBLE_MATCH: ");
                node.print(0, result);
            }
            ++i2;
        }
        return result.toString();
    }
}

