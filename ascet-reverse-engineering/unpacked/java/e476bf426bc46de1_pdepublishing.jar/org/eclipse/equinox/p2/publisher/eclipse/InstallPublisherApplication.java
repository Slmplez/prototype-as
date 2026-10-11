/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.equinox.p2.core.ProvisionException
 *  org.eclipse.equinox.p2.metadata.IVersionedId
 *  org.eclipse.equinox.p2.metadata.Version
 *  org.eclipse.equinox.p2.metadata.VersionedId
 *  org.eclipse.equinox.p2.publisher.AbstractPublisherAction
 *  org.eclipse.equinox.p2.publisher.AbstractPublisherApplication
 *  org.eclipse.equinox.p2.publisher.IPublisherAction
 *  org.eclipse.equinox.p2.publisher.PublisherInfo
 */
package org.eclipse.equinox.p2.publisher.eclipse;

import java.net.URISyntaxException;
import java.util.ArrayList;
import org.eclipse.equinox.p2.core.ProvisionException;
import org.eclipse.equinox.p2.metadata.IVersionedId;
import org.eclipse.equinox.p2.metadata.Version;
import org.eclipse.equinox.p2.metadata.VersionedId;
import org.eclipse.equinox.p2.publisher.AbstractPublisherAction;
import org.eclipse.equinox.p2.publisher.AbstractPublisherApplication;
import org.eclipse.equinox.p2.publisher.IPublisherAction;
import org.eclipse.equinox.p2.publisher.PublisherInfo;
import org.eclipse.equinox.p2.publisher.eclipse.EclipseInstallAction;

public class InstallPublisherApplication
extends AbstractPublisherApplication {
    protected String id;
    protected Version version = Version.parseVersion((String)"1.0.0");
    protected String name;
    protected String executableName;
    protected String flavor;
    protected IVersionedId[] topLevel;
    protected boolean start;
    protected String[] rootExclusions;

    protected void processFlag(String arg, PublisherInfo publisherInfo) {
        super.processFlag(arg, publisherInfo);
        if (arg.equalsIgnoreCase("-startAll")) {
            this.start = true;
        }
    }

    protected void initialize(PublisherInfo publisherInfo) throws ProvisionException {
        super.initialize(publisherInfo);
        if (publisherInfo.getConfigurations().length == 0) {
            publisherInfo.setConfigurations(new String[]{""});
        }
    }

    protected void processParameter(String arg, String parameter, PublisherInfo publisherInfo) throws URISyntaxException {
        super.processParameter(arg, parameter, publisherInfo);
        if (arg.equalsIgnoreCase("-id")) {
            this.id = parameter;
        }
        if (arg.equalsIgnoreCase("-version")) {
            this.version = Version.parseVersion((String)parameter);
        }
        if (arg.equalsIgnoreCase("-name")) {
            this.name = parameter;
        }
        if (arg.equalsIgnoreCase("-executable")) {
            this.executableName = parameter;
        }
        if (arg.equalsIgnoreCase("-flavor")) {
            this.flavor = parameter;
        }
        if (arg.equalsIgnoreCase("-top")) {
            this.topLevel = this.createVersionedIdList(parameter);
        }
        if (arg.equalsIgnoreCase("-rootExclusions")) {
            this.rootExclusions = AbstractPublisherAction.getArrayFromString((String)parameter, (String)",");
        }
    }

    private IVersionedId[] createVersionedIdList(String parameter) {
        String[] list = AbstractPublisherAction.getArrayFromString((String)parameter, (String)",");
        IVersionedId[] result = new IVersionedId[list.length];
        int i = 0;
        while (i < result.length) {
            result[i] = VersionedId.parse((String)list[i]);
            ++i;
        }
        return result;
    }

    protected IPublisherAction[] createActions() {
        ArrayList<IPublisherAction> result = new ArrayList<IPublisherAction>();
        result.add(this.createEclipseInstallAction());
        return result.toArray(new IPublisherAction[result.size()]);
    }

    private IPublisherAction createEclipseInstallAction() {
        String[] exclusions = this.getBaseExclusions();
        if (this.rootExclusions != null) {
            String[] result = new String[exclusions.length + this.rootExclusions.length];
            System.arraycopy(exclusions, 0, result, 0, exclusions.length);
            System.arraycopy(this.rootExclusions, 0, result, exclusions.length, this.rootExclusions.length);
            exclusions = result;
        }
        return new EclipseInstallAction(this.source, this.id, this.version, this.name, this.executableName, this.flavor, this.topLevel, exclusions, this.start);
    }

    protected String[] getBaseExclusions() {
        return new String[]{"plugins", "features", "configuration", "p2", "artifacts.xml"};
    }
}

