/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.osgi.util.NLS
 */
package org.eclipse.pde.internal.core.builders;

import java.util.Vector;
import org.eclipse.osgi.util.NLS;
import org.eclipse.pde.core.plugin.IPlugin;
import org.eclipse.pde.core.plugin.IPluginImport;
import org.eclipse.pde.core.plugin.IPluginModel;
import org.eclipse.pde.core.plugin.IPluginModelBase;
import org.eclipse.pde.core.plugin.PluginRegistry;
import org.eclipse.pde.internal.core.PDECoreMessages;
import org.eclipse.pde.internal.core.builders.DependencyLoop;

public class DependencyLoopFinder {
    public static DependencyLoop[] findLoops(IPlugin root) {
        return DependencyLoopFinder.findLoops(root, null);
    }

    public static DependencyLoop[] findLoops(IPlugin root, IPlugin[] candidates) {
        return DependencyLoopFinder.findLoops(root, candidates, false);
    }

    public static DependencyLoop[] findLoops(IPlugin root, IPlugin[] candidates, boolean onlyCandidates) {
        Vector loops = new Vector();
        Vector path = new Vector();
        DependencyLoopFinder.findLoops(loops, path, root, candidates, onlyCandidates, new Vector());
        return loops.toArray(new DependencyLoop[loops.size()]);
    }

    private static void findLoops(Vector loops, Vector path, IPlugin subroot, IPlugin[] candidates, boolean onlyCandidates, Vector exploredPlugins) {
        if (path.size() > 0) {
            IPlugin root = (IPlugin)path.elementAt(0);
            if (DependencyLoopFinder.isEquivalent(root, subroot)) {
                DependencyLoop loop = new DependencyLoop();
                loop.setMembers(path.toArray(new IPlugin[path.size()]));
                int no = loops.size() + 1;
                loop.setName(NLS.bind((String)PDECoreMessages.Builders_DependencyLoopFinder_loopName, (Object)("" + no)));
                loops.add(loop);
                return;
            }
            int i = 1;
            while (i < path.size()) {
                IPlugin node = (IPlugin)path.elementAt(i);
                if (DependencyLoopFinder.isEquivalent(subroot, node)) {
                    return;
                }
                ++i;
            }
        }
        Vector newPath = path.size() > 0 ? (Vector)path.clone() : path;
        newPath.add(subroot);
        if (!onlyCandidates) {
            IPluginImport[] iimports = subroot.getImports();
            int i = 0;
            while (i < iimports.length) {
                IPlugin child;
                IPluginImport iimport = iimports[i];
                String id = iimport.getId();
                if (id != null && !exploredPlugins.contains(id) && (child = DependencyLoopFinder.findPlugin(id)) != null) {
                    int oldLoopSize = loops.size();
                    DependencyLoopFinder.findLoops(loops, newPath, child, null, false, exploredPlugins);
                    int newLoopsSize = loops.size();
                    if (oldLoopSize == newLoopsSize) {
                        exploredPlugins.add(id);
                    }
                }
                ++i;
            }
        }
        if (candidates != null) {
            int i = 0;
            while (i < candidates.length) {
                IPlugin candidate = candidates[i];
                int oldLoopSize = loops.size();
                DependencyLoopFinder.findLoops(loops, newPath, candidate, null, false, exploredPlugins);
                int newLoopsSize = loops.size();
                if (oldLoopSize == newLoopsSize) {
                    exploredPlugins.add(candidate.getId());
                }
                ++i;
            }
        }
    }

    private static IPlugin findPlugin(String id) {
        IPluginModelBase childModel = PluginRegistry.findModel(id);
        if (childModel == null || !(childModel instanceof IPluginModel)) {
            return null;
        }
        return (IPlugin)childModel.getPluginBase();
    }

    private static boolean isEquivalent(IPlugin left, IPlugin right) {
        return left.getId().equals(right.getId());
    }
}

