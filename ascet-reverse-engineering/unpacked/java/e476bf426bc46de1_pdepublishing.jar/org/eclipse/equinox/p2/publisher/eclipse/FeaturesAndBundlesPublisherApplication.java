/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.equinox.p2.metadata.Version
 *  org.eclipse.equinox.p2.publisher.AbstractPublisherAction
 *  org.eclipse.equinox.p2.publisher.AbstractPublisherApplication
 *  org.eclipse.equinox.p2.publisher.IPublisherAction
 *  org.eclipse.equinox.p2.publisher.IPublisherAdvice
 *  org.eclipse.equinox.p2.publisher.PublisherInfo
 *  org.eclipse.equinox.p2.publisher.actions.RootIUAction
 *  org.eclipse.equinox.p2.publisher.actions.RootIUResultFilterAdvice
 */
package org.eclipse.equinox.p2.publisher.eclipse;

import java.io.File;
import java.net.URISyntaxException;
import java.util.ArrayList;
import org.eclipse.equinox.p2.metadata.Version;
import org.eclipse.equinox.p2.publisher.AbstractPublisherAction;
import org.eclipse.equinox.p2.publisher.AbstractPublisherApplication;
import org.eclipse.equinox.p2.publisher.IPublisherAction;
import org.eclipse.equinox.p2.publisher.IPublisherAdvice;
import org.eclipse.equinox.p2.publisher.PublisherInfo;
import org.eclipse.equinox.p2.publisher.actions.RootIUAction;
import org.eclipse.equinox.p2.publisher.actions.RootIUResultFilterAdvice;
import org.eclipse.equinox.p2.publisher.eclipse.BundlesAction;
import org.eclipse.equinox.p2.publisher.eclipse.FeaturesAction;

public class FeaturesAndBundlesPublisherApplication
extends AbstractPublisherApplication {
    protected File[] features = null;
    protected File[] bundles = null;
    protected String rootIU = null;
    protected String rootVersion = null;

    protected void processParameter(String arg, String parameter, PublisherInfo pinfo) throws URISyntaxException {
        super.processParameter(arg, parameter, pinfo);
        if (arg.equalsIgnoreCase("-features")) {
            this.features = this.createFiles(parameter);
        }
        if (arg.equalsIgnoreCase("-bundles")) {
            this.bundles = this.createFiles(parameter);
        }
        if (arg.equalsIgnoreCase("-iu")) {
            this.rootIU = parameter;
        }
        if (arg.equalsIgnoreCase("-version")) {
            this.rootVersion = parameter;
        }
    }

    private File[] createFiles(String parameter) {
        String[] filespecs = AbstractPublisherAction.getArrayFromString((String)parameter, (String)",");
        File[] result = new File[filespecs.length];
        int i = 0;
        while (i < filespecs.length) {
            result[i] = new File(filespecs[i]);
            ++i;
        }
        return result;
    }

    protected IPublisherAction[] createActions() {
        ArrayList<Object> result = new ArrayList<Object>();
        if (this.features == null) {
            this.features = new File[]{new File(this.source, "features")};
        }
        result.add((Object)new FeaturesAction(this.features));
        if (this.bundles == null) {
            this.bundles = new File[]{new File(this.source, "plugins")};
        }
        result.add((Object)new BundlesAction(this.bundles));
        if (this.rootIU != null) {
            result.add(new RootIUAction(this.rootIU, Version.parseVersion((String)this.rootVersion), this.rootIU));
            this.info.addAdvice((IPublisherAdvice)new RootIUResultFilterAdvice(null));
        }
        return result.toArray(new IPublisherAction[result.size()]);
    }
}

