/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.pde.internal.core.feature;

import org.eclipse.pde.internal.core.feature.FeatureChild;
import org.eclipse.pde.internal.core.feature.FeatureData;
import org.eclipse.pde.internal.core.feature.FeatureImport;
import org.eclipse.pde.internal.core.feature.FeatureInfo;
import org.eclipse.pde.internal.core.feature.FeatureInstallHandler;
import org.eclipse.pde.internal.core.feature.FeaturePlugin;
import org.eclipse.pde.internal.core.feature.FeatureURL;
import org.eclipse.pde.internal.core.feature.FeatureURLElement;
import org.eclipse.pde.internal.core.ifeature.IFeatureChild;
import org.eclipse.pde.internal.core.ifeature.IFeatureData;
import org.eclipse.pde.internal.core.ifeature.IFeatureImport;
import org.eclipse.pde.internal.core.ifeature.IFeatureInfo;
import org.eclipse.pde.internal.core.ifeature.IFeatureInstallHandler;
import org.eclipse.pde.internal.core.ifeature.IFeatureModel;
import org.eclipse.pde.internal.core.ifeature.IFeatureModelFactory;
import org.eclipse.pde.internal.core.ifeature.IFeaturePlugin;
import org.eclipse.pde.internal.core.ifeature.IFeatureURL;
import org.eclipse.pde.internal.core.ifeature.IFeatureURLElement;

public class FeatureFactory
implements IFeatureModelFactory {
    private IFeatureModel model;

    public FeatureFactory(IFeatureModel model) {
        this.model = model;
    }

    public IFeaturePlugin createPlugin() {
        FeaturePlugin plugin = new FeaturePlugin();
        plugin.model = this.model;
        plugin.parent = this.model.getFeature();
        return plugin;
    }

    public IFeatureData createData() {
        FeatureData data = new FeatureData();
        data.model = this.model;
        data.parent = this.model.getFeature();
        return data;
    }

    public IFeatureChild createChild() {
        FeatureChild child = new FeatureChild();
        child.model = this.model;
        child.parent = this.model.getFeature();
        return child;
    }

    public IFeatureImport createImport() {
        FeatureImport iimport = new FeatureImport();
        iimport.model = this.model;
        iimport.parent = this.model.getFeature();
        return iimport;
    }

    public IFeatureURL createURL() {
        FeatureURL url = new FeatureURL();
        url.model = this.model;
        url.parent = this.model.getFeature();
        return url;
    }

    public IFeatureInstallHandler createInstallHandler() {
        FeatureInstallHandler handler = new FeatureInstallHandler();
        handler.model = this.model;
        handler.parent = this.model.getFeature();
        return handler;
    }

    public IFeatureInfo createInfo(int index) {
        FeatureInfo info = new FeatureInfo(index);
        info.model = this.model;
        info.parent = this.model.getFeature();
        return info;
    }

    public IFeatureURLElement createURLElement(IFeatureURL parent, int elementType) {
        FeatureURLElement element = new FeatureURLElement(elementType);
        element.model = this.model;
        element.parent = parent;
        return element;
    }
}

