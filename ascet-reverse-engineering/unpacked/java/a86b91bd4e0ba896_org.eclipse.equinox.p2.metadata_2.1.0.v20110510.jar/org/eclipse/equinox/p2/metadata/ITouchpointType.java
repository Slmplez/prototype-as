/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.equinox.p2.metadata;

import org.eclipse.equinox.p2.metadata.Version;

public interface ITouchpointType {
    public static final ITouchpointType NONE = new ITouchpointType(){

        public String getId() {
            return "null";
        }

        public Version getVersion() {
            return Version.emptyVersion;
        }
    };

    public String getId();

    public Version getVersion();

    public boolean equals(Object var1);
}

