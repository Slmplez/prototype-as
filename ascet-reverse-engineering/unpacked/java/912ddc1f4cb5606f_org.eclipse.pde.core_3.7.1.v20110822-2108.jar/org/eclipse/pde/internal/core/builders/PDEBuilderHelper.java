/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.resources.IProject
 *  org.eclipse.core.resources.IResource
 *  org.eclipse.core.runtime.IPath
 *  org.eclipse.jdt.core.IClasspathEntry
 */
package org.eclipse.pde.internal.core.builders;

import java.util.ArrayList;
import org.eclipse.core.resources.IProject;
import org.eclipse.core.resources.IResource;
import org.eclipse.core.runtime.IPath;
import org.eclipse.jdt.core.IClasspathEntry;
import org.eclipse.pde.core.build.IBuild;
import org.eclipse.pde.core.build.IBuildEntry;

public class PDEBuilderHelper {
    public static String[] getUnlistedClasspaths(ArrayList sourceEntries, IProject project, IClasspathEntry[] cpes) {
        String[] unlisted = new String[cpes.length];
        int index = 0;
        int i = 0;
        while (i < cpes.length) {
            if (cpes[i].getEntryKind() == 3) {
                IPath path = cpes[i].getPath();
                boolean found = false;
                int j = 0;
                while (j < sourceEntries.size()) {
                    IBuildEntry be = (IBuildEntry)sourceEntries.get(j);
                    String[] tokens = be.getTokens();
                    int k = 0;
                    while (k < tokens.length) {
                        IPath ipath;
                        IResource res = project.findMember(tokens[k]);
                        if (res != null && (ipath = res.getFullPath()).equals((Object)path)) {
                            found = true;
                        }
                        ++k;
                    }
                    ++j;
                }
                if (!found) {
                    unlisted[index++] = path.removeFirstSegments(1).addTrailingSeparator().toString();
                }
            }
            ++i;
        }
        return unlisted;
    }

    public static ArrayList getSourceEntries(IBuild build) {
        ArrayList<String> sourceEntryKeys = new ArrayList<String>();
        IBuildEntry[] entries = build.getBuildEntries();
        int i = 0;
        while (i < entries.length) {
            String name = entries[i].getName();
            if (name.startsWith("source.")) {
                String entry = name.substring("source.".length(), name.length());
                sourceEntryKeys.add(entry);
            }
            ++i;
        }
        return sourceEntryKeys;
    }
}

