/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.runtime.CoreException
 *  org.eclipse.jface.text.IDocument
 *  org.eclipse.osgi.util.ManifestElement
 *  org.osgi.framework.BundleException
 */
package org.eclipse.pde.internal.core.text.bundle;

import java.io.IOException;
import java.io.InputStream;
import org.eclipse.core.runtime.CoreException;
import org.eclipse.jface.text.IDocument;
import org.eclipse.osgi.util.ManifestElement;
import org.eclipse.pde.internal.core.NLResourceHelper;
import org.eclipse.pde.internal.core.ibundle.IBundle;
import org.eclipse.pde.internal.core.ibundle.IBundleModel;
import org.eclipse.pde.internal.core.ibundle.IBundleModelFactory;
import org.eclipse.pde.internal.core.text.AbstractEditingModel;
import org.eclipse.pde.internal.core.text.bundle.Bundle;
import org.eclipse.pde.internal.core.text.bundle.BundleModelFactory;
import org.osgi.framework.BundleException;

public class BundleModel
extends AbstractEditingModel
implements IBundleModel {
    private IBundle fBundle = new Bundle(this);
    private IBundleModelFactory fFactory;

    public BundleModel(IDocument document, boolean isReconciling) {
        super(document, isReconciling);
    }

    protected NLResourceHelper createNLResourceHelper() {
        return null;
    }

    public boolean isFragmentModel() {
        return this.getBundle().getHeader("Fragment-Host") != null;
    }

    public void load(InputStream source, boolean outOfSync) throws CoreException {
        try {
            this.fLoaded = true;
            ((Bundle)this.getBundle()).clearHeaders();
            ((Bundle)this.getBundle()).load(ManifestElement.parseBundleManifest((InputStream)source, null));
        }
        catch (BundleException bundleException) {
            this.fLoaded = false;
        }
        catch (IOException iOException) {
            this.fLoaded = false;
        }
    }

    public void adjustOffsets(IDocument document) {
        ((Bundle)this.getBundle()).clearOffsets();
        ((Bundle)this.getBundle()).adjustOffsets(document);
    }

    public IBundle getBundle() {
        return this.fBundle;
    }

    public IBundleModelFactory getFactory() {
        if (this.fFactory == null) {
            this.fFactory = new BundleModelFactory(this);
        }
        return this.fFactory;
    }
}

