/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.jface.text.IDocument
 *  org.eclipse.jface.text.TextUtilities
 */
package org.eclipse.pde.internal.core.text.bundle;

import org.eclipse.jface.text.IDocument;
import org.eclipse.jface.text.TextUtilities;
import org.eclipse.pde.internal.core.ibundle.IBundle;
import org.eclipse.pde.internal.core.ibundle.IBundleModel;
import org.eclipse.pde.internal.core.ibundle.IBundleModelFactory;
import org.eclipse.pde.internal.core.ibundle.IManifestHeader;
import org.eclipse.pde.internal.core.text.bundle.BundleActivationPolicyHeader;
import org.eclipse.pde.internal.core.text.bundle.BundleActivatorHeader;
import org.eclipse.pde.internal.core.text.bundle.BundleClasspathHeader;
import org.eclipse.pde.internal.core.text.bundle.BundleLocalizationHeader;
import org.eclipse.pde.internal.core.text.bundle.BundleModel;
import org.eclipse.pde.internal.core.text.bundle.BundleNameHeader;
import org.eclipse.pde.internal.core.text.bundle.BundleSymbolicNameHeader;
import org.eclipse.pde.internal.core.text.bundle.BundleVendorHeader;
import org.eclipse.pde.internal.core.text.bundle.BundleVersionHeader;
import org.eclipse.pde.internal.core.text.bundle.ExportPackageHeader;
import org.eclipse.pde.internal.core.text.bundle.FragmentHostHeader;
import org.eclipse.pde.internal.core.text.bundle.ImportPackageHeader;
import org.eclipse.pde.internal.core.text.bundle.LazyStartHeader;
import org.eclipse.pde.internal.core.text.bundle.ManifestHeader;
import org.eclipse.pde.internal.core.text.bundle.RequireBundleHeader;
import org.eclipse.pde.internal.core.text.bundle.RequiredExecutionEnvironmentHeader;

public class BundleModelFactory
implements IBundleModelFactory {
    private IBundleModel fModel;

    public BundleModelFactory(IBundleModel model) {
        this.fModel = model;
    }

    public IManifestHeader createHeader() {
        return null;
    }

    public IManifestHeader createHeader(String key, String value) {
        ManifestHeader header = null;
        IBundle bundle = this.fModel.getBundle();
        String newLine = this.fModel instanceof BundleModel ? TextUtilities.getDefaultLineDelimiter((IDocument)((BundleModel)this.fModel).getDocument()) : System.getProperty("line.separator");
        header = key.equalsIgnoreCase("Bundle-Activator") ? new BundleActivatorHeader(key, value, bundle, newLine) : (key.equalsIgnoreCase("Bundle-Localization") ? new BundleLocalizationHeader(key, value, bundle, newLine) : (key.equalsIgnoreCase("Bundle-Name") ? new BundleNameHeader(key, value, bundle, newLine) : (key.equalsIgnoreCase("Bundle-RequiredExecutionEnvironment") ? new RequiredExecutionEnvironmentHeader(key, value, bundle, newLine) : (key.equalsIgnoreCase("Bundle-SymbolicName") ? new BundleSymbolicNameHeader(key, value, bundle, newLine) : (key.equalsIgnoreCase("Bundle-Vendor") ? new BundleVendorHeader(key, value, bundle, newLine) : (key.equalsIgnoreCase("Bundle-Version") ? new BundleVersionHeader(key, value, bundle, newLine) : (key.equalsIgnoreCase("Bundle-ClassPath") ? new BundleClasspathHeader(key, value, bundle, newLine) : (key.equalsIgnoreCase("Eclipse-LazyStart") || key.equalsIgnoreCase("Eclipse-AutoStart") ? new LazyStartHeader(key, value, bundle, newLine) : (key.equalsIgnoreCase("Export-Package") || key.equalsIgnoreCase("Provide-Package") ? new ExportPackageHeader(key, value, bundle, newLine) : (key.equalsIgnoreCase("Fragment-Host") ? new FragmentHostHeader(key, value, bundle, newLine) : (key.equalsIgnoreCase("Import-Package") ? new ImportPackageHeader(key, value, bundle, newLine) : (key.equalsIgnoreCase("Require-Bundle") ? new RequireBundleHeader(key, value, bundle, newLine) : (key.equalsIgnoreCase("Bundle-ActivationPolicy") ? new BundleActivationPolicyHeader(key, value, bundle, newLine) : new ManifestHeader(key, value, bundle, newLine))))))))))))));
        return header;
    }
}

