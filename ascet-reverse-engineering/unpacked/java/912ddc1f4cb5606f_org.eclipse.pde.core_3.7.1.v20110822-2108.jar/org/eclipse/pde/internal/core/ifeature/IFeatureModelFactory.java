/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.pde.internal.core.ifeature;

import org.eclipse.pde.internal.core.ifeature.IFeatureChild;
import org.eclipse.pde.internal.core.ifeature.IFeatureData;
import org.eclipse.pde.internal.core.ifeature.IFeatureImport;
import org.eclipse.pde.internal.core.ifeature.IFeatureInfo;
import org.eclipse.pde.internal.core.ifeature.IFeatureInstallHandler;
import org.eclipse.pde.internal.core.ifeature.IFeaturePlugin;
import org.eclipse.pde.internal.core.ifeature.IFeatureURL;
import org.eclipse.pde.internal.core.ifeature.IFeatureURLElement;

public interface IFeatureModelFactory {
    public IFeaturePlugin createPlugin();

    public IFeatureData createData();

    public IFeatureChild createChild();

    public IFeatureImport createImport();

    public IFeatureURL createURL();

    public IFeatureInstallHandler createInstallHandler();

    public IFeatureInfo createInfo(int var1);

    public IFeatureURLElement createURLElement(IFeatureURL var1, int var2);
}

