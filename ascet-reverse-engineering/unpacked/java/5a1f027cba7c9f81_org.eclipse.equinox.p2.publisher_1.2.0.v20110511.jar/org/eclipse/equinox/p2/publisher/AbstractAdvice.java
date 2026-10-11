/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.equinox.p2.metadata.Version
 *  org.eclipse.equinox.p2.metadata.VersionRange
 */
package org.eclipse.equinox.p2.publisher;

import org.eclipse.equinox.p2.metadata.Version;
import org.eclipse.equinox.p2.metadata.VersionRange;
import org.eclipse.equinox.p2.publisher.AbstractPublisherAction;
import org.eclipse.equinox.p2.publisher.IPublisherAdvice;

public class AbstractAdvice
implements IPublisherAdvice {
    public boolean isApplicable(String configSpec, boolean includeDefault, String id, Version version) {
        return this.matchConfig(configSpec, includeDefault) && this.matchId(id) && this.matchVersion(version);
    }

    protected boolean matchVersion(Version version) {
        if (version == null) {
            return true;
        }
        Version adviceVersion = this.getVersion();
        if (adviceVersion != null) {
            return version.equals(adviceVersion);
        }
        VersionRange range = this.getVersionRange();
        if (range != null) {
            return range.isIncluded(version);
        }
        return true;
    }

    protected Version getVersion() {
        return null;
    }

    protected VersionRange getVersionRange() {
        return null;
    }

    protected boolean matchId(String id) {
        if (id == null) {
            return true;
        }
        String adviceId = this.getId();
        return adviceId == null ? true : adviceId.equals(id);
    }

    protected String getId() {
        return null;
    }

    protected boolean matchConfig(String configSpec, boolean includeDefault) {
        String adviceConfigSpec = this.getConfigSpec();
        if (adviceConfigSpec == null) {
            return includeDefault;
        }
        String[] full = AbstractPublisherAction.parseConfigSpec(configSpec);
        String[] partial = AbstractPublisherAction.parseConfigSpec(adviceConfigSpec);
        int i = 0;
        while (i < partial.length) {
            String string = partial[i];
            if (string != null && !string.equals(full[i])) {
                return false;
            }
            ++i;
        }
        return true;
    }

    protected String getConfigSpec() {
        return null;
    }
}

