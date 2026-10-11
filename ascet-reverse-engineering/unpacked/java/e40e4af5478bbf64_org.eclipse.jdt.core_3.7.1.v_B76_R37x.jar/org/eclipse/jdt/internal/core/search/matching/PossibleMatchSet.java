/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.runtime.IPath
 */
package org.eclipse.jdt.internal.core.search.matching;

import org.eclipse.core.runtime.IPath;
import org.eclipse.jdt.core.IPackageFragmentRoot;
import org.eclipse.jdt.internal.compiler.util.ObjectVector;
import org.eclipse.jdt.internal.compiler.util.SimpleLookupTable;
import org.eclipse.jdt.internal.core.search.matching.PossibleMatch;

public class PossibleMatchSet {
    private SimpleLookupTable rootsToPossibleMatches = new SimpleLookupTable(5);
    private int elementCount = 0;

    public void add(PossibleMatch possibleMatch) {
        IPath path = possibleMatch.openable.getPackageFragmentRoot().getPath();
        ObjectVector possibleMatches = (ObjectVector)this.rootsToPossibleMatches.get(path);
        if (possibleMatches != null) {
            PossibleMatch storedMatch = (PossibleMatch)possibleMatches.find(possibleMatch);
            if (storedMatch != null) {
                while (storedMatch.getSimilarMatch() != null) {
                    storedMatch = storedMatch.getSimilarMatch();
                }
                storedMatch.setSimilarMatch(possibleMatch);
                return;
            }
        } else {
            possibleMatches = new ObjectVector();
            this.rootsToPossibleMatches.put(path, possibleMatches);
        }
        possibleMatches.add(possibleMatch);
        ++this.elementCount;
    }

    public PossibleMatch[] getPossibleMatches(IPackageFragmentRoot[] roots) {
        Object[] result = new PossibleMatch[this.elementCount];
        int index = 0;
        int i = 0;
        int length = roots.length;
        while (i < length) {
            ObjectVector possibleMatches = (ObjectVector)this.rootsToPossibleMatches.get(roots[i].getPath());
            if (possibleMatches != null) {
                possibleMatches.copyInto(result, index);
                index += possibleMatches.size();
            }
            ++i;
        }
        if (index < this.elementCount) {
            Object[] objectArray = result;
            result = new PossibleMatch[index];
            System.arraycopy(objectArray, 0, result, 0, index);
        }
        return result;
    }

    public void reset() {
        this.rootsToPossibleMatches = new SimpleLookupTable(5);
        this.elementCount = 0;
    }
}

