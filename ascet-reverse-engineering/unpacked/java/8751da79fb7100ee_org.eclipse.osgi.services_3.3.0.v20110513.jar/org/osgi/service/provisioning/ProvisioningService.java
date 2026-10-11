/*
 * Decompiled with CFR 0.152.
 */
package org.osgi.service.provisioning;

import java.io.IOException;
import java.util.Dictionary;
import java.util.zip.ZipInputStream;

public interface ProvisioningService {
    public static final String PROVISIONING_SPID = "provisioning.spid";
    public static final String PROVISIONING_REFERENCE = "provisioning.reference";
    public static final String PROVISIONING_AGENT_CONFIG = "provisioning.agent.config";
    public static final String PROVISIONING_UPDATE_COUNT = "provisioning.update.count";
    public static final String PROVISIONING_START_BUNDLE = "provisioning.start.bundle";
    public static final String PROVISIONING_ROOTX509 = "provisioning.rootx509";
    public static final String PROVISIONING_RSH_SECRET = "provisioning.rsh.secret";
    public static final String MIME_STRING = "text/plain;charset=utf-8";
    public static final String MIME_BYTE_ARRAY = "application/octet-stream";
    public static final String MIME_BUNDLE = "application/vnd.osgi.bundle";
    public static final String MIME_BUNDLE_ALT = "application/x-osgi-bundle";
    public static final String MIME_BUNDLE_URL = "text/x-osgi-bundle-url";
    public static final String INITIALPROVISIONING_ENTRIES = "InitialProvisioning-Entries";

    public Dictionary getInformation();

    public void setInformation(Dictionary var1);

    public void addInformation(Dictionary var1);

    public void addInformation(ZipInputStream var1) throws IOException;
}

