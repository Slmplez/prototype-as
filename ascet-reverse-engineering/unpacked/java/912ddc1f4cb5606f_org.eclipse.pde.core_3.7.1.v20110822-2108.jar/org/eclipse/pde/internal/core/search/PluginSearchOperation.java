/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.runtime.IProgressMonitor
 */
package org.eclipse.pde.internal.core.search;

import java.util.ArrayList;
import java.util.regex.Pattern;
import org.eclipse.core.runtime.IProgressMonitor;
import org.eclipse.pde.core.plugin.IFragment;
import org.eclipse.pde.core.plugin.IPlugin;
import org.eclipse.pde.core.plugin.IPluginBase;
import org.eclipse.pde.core.plugin.IPluginExtension;
import org.eclipse.pde.core.plugin.IPluginExtensionPoint;
import org.eclipse.pde.core.plugin.IPluginImport;
import org.eclipse.pde.core.plugin.IPluginModelBase;
import org.eclipse.pde.internal.core.search.ISearchResultCollector;
import org.eclipse.pde.internal.core.search.PluginSearchInput;
import org.eclipse.pde.internal.core.util.PatternConstructor;

public class PluginSearchOperation {
    protected PluginSearchInput fInput;
    private ISearchResultCollector fCollector;
    private Pattern fPattern;

    public PluginSearchOperation(PluginSearchInput input, ISearchResultCollector collector) {
        this.fInput = input;
        this.fCollector = collector;
        this.fPattern = PatternConstructor.createPattern(input.getSearchString(), input.isCaseSensitive());
    }

    public void execute(IProgressMonitor monitor) {
        IPluginModelBase[] entries = this.fInput.getSearchScope().getMatchingModels();
        monitor.beginTask("", entries.length);
        try {
            int i = 0;
            while (i < entries.length) {
                IPluginModelBase candidate = entries[i];
                this.visit(candidate);
                monitor.worked(1);
                ++i;
            }
        }
        finally {
            monitor.done();
        }
    }

    private void visit(IPluginModelBase model) {
        ArrayList matches = this.findMatch(model);
        int i = 0;
        while (i < matches.size()) {
            this.fCollector.accept(matches.get(i));
            ++i;
        }
    }

    private ArrayList findMatch(IPluginModelBase model) {
        ArrayList result = new ArrayList();
        int searchLimit = this.fInput.getSearchLimit();
        switch (this.fInput.getSearchElement()) {
            case 1: {
                if (searchLimit != 2) {
                    this.findPluginDeclaration(model, result);
                }
                if (searchLimit == 1) break;
                this.findPluginReferences(model, result);
                break;
            }
            case 2: {
                this.findFragmentDeclaration(model, result);
                break;
            }
            case 3: {
                if (searchLimit != 2) {
                    this.findExtensionPointDeclarations(model, result);
                }
                if (searchLimit == 1) break;
                this.findExtensionPointReferences(model, result);
            }
        }
        return result;
    }

    private void findFragmentDeclaration(IPluginModelBase model, ArrayList result) {
        IPluginBase pluginBase = model.getPluginBase();
        if (pluginBase instanceof IFragment && this.fPattern.matcher(pluginBase.getId()).matches()) {
            result.add(pluginBase);
        }
    }

    private void findPluginDeclaration(IPluginModelBase model, ArrayList result) {
        IPluginBase pluginBase = model.getPluginBase();
        if (pluginBase instanceof IPlugin && this.fPattern.matcher(pluginBase.getId()).matches()) {
            result.add(pluginBase);
        }
    }

    private void findPluginReferences(IPluginModelBase model, ArrayList result) {
        IPluginBase pluginBase = model.getPluginBase();
        if (pluginBase instanceof IFragment && this.fPattern.matcher(((IFragment)pluginBase).getPluginId()).matches()) {
            result.add(pluginBase);
        }
        IPluginImport[] imports = pluginBase.getImports();
        int i = 0;
        while (i < imports.length) {
            if (this.fPattern.matcher(imports[i].getId()).matches()) {
                result.add(imports[i]);
            }
            ++i;
        }
    }

    private void findExtensionPointDeclarations(IPluginModelBase model, ArrayList result) {
        IPluginExtensionPoint[] extensionPoints = model.getPluginBase().getExtensionPoints();
        int i = 0;
        while (i < extensionPoints.length) {
            if (this.fPattern.matcher(extensionPoints[i].getFullId()).matches()) {
                result.add(extensionPoints[i]);
            }
            ++i;
        }
    }

    private void findExtensionPointReferences(IPluginModelBase model, ArrayList result) {
        IPluginExtension[] extensions = model.getPluginBase().getExtensions();
        int i = 0;
        while (i < extensions.length) {
            if (this.fPattern.matcher(extensions[i].getPoint()).matches()) {
                result.add(extensions[i]);
            }
            ++i;
        }
    }
}

