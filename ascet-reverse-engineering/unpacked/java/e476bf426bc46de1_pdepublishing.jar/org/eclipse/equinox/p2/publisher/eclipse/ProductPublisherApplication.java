/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.equinox.internal.p2.publisher.Messages
 *  org.eclipse.equinox.p2.publisher.AbstractPublisherApplication
 *  org.eclipse.equinox.p2.publisher.IPublisherAction
 *  org.eclipse.equinox.p2.publisher.IPublisherAdvice
 *  org.eclipse.equinox.p2.publisher.PublisherInfo
 *  org.eclipse.equinox.p2.publisher.actions.VersionAdvice
 *  org.eclipse.osgi.util.NLS
 */
package org.eclipse.equinox.p2.publisher.eclipse;

import java.io.File;
import java.net.URISyntaxException;
import java.util.ArrayList;
import org.eclipse.equinox.internal.p2.publisher.Messages;
import org.eclipse.equinox.internal.p2.publisher.eclipse.ProductFile;
import org.eclipse.equinox.p2.publisher.AbstractPublisherApplication;
import org.eclipse.equinox.p2.publisher.IPublisherAction;
import org.eclipse.equinox.p2.publisher.IPublisherAdvice;
import org.eclipse.equinox.p2.publisher.PublisherInfo;
import org.eclipse.equinox.p2.publisher.actions.VersionAdvice;
import org.eclipse.equinox.p2.publisher.eclipse.ProductAction;
import org.eclipse.osgi.util.NLS;

public class ProductPublisherApplication
extends AbstractPublisherApplication {
    private String product;
    private String executables;
    private String flavor;

    protected IPublisherAction[] createActions() {
        ArrayList<IPublisherAction> result = new ArrayList<IPublisherAction>();
        result.add(this.createProductAction());
        return result.toArray(new IPublisherAction[result.size()]);
    }

    private IPublisherAction createProductAction() {
        ProductFile productDescriptor = null;
        try {
            productDescriptor = new ProductFile(this.product);
        }
        catch (Exception e) {
            throw new IllegalArgumentException(NLS.bind((String)Messages.exception_errorLoadingProductFile, (Object)this.product, (Object)e.toString()));
        }
        File executablesFeature = this.executables == null ? null : new File(this.executables);
        return new ProductAction(this.source, productDescriptor, this.flavor, executablesFeature);
    }

    protected void processParameter(String arg, String parameter, PublisherInfo publisherInfo) throws URISyntaxException {
        VersionAdvice versionAdvice;
        super.processParameter(arg, parameter, publisherInfo);
        if (arg.equalsIgnoreCase("-productFile")) {
            this.product = parameter;
        }
        if (arg.equalsIgnoreCase("-executables")) {
            this.executables = parameter;
        }
        if (arg.equalsIgnoreCase("-flavor")) {
            this.flavor = parameter;
        }
        if (arg.equalsIgnoreCase("-pluginVersionsAdvice")) {
            versionAdvice = new VersionAdvice();
            versionAdvice.load("org.eclipse.equinox.p2.iu", parameter, null);
            this.info.addAdvice((IPublisherAdvice)versionAdvice);
        }
        if (arg.equalsIgnoreCase("-featureVersionsAdvice")) {
            versionAdvice = new VersionAdvice();
            versionAdvice.load("org.eclipse.equinox.p2.iu", parameter, ".feature.group");
            this.info.addAdvice((IPublisherAdvice)versionAdvice);
        }
    }
}

