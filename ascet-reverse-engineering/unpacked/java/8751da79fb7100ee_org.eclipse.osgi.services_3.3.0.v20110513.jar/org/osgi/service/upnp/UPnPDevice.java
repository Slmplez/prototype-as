/*
 * Decompiled with CFR 0.152.
 */
package org.osgi.service.upnp;

import java.util.Dictionary;
import org.osgi.service.upnp.UPnPIcon;
import org.osgi.service.upnp.UPnPService;

public interface UPnPDevice {
    public static final int MATCH_GENERIC = 1;
    public static final int MATCH_TYPE = 3;
    public static final int MATCH_MANUFACTURER_MODEL = 7;
    public static final int MATCH_MANUFACTURER_MODEL_REVISION = 15;
    public static final int MATCH_MANUFACTURER_MODEL_REVISION_SERIAL = 31;
    public static final String DEVICE_CATEGORY = "UPnP";
    public static final String UPNP_EXPORT = "UPnP.export";
    public static final String UDN = "UPnP.device.UDN";
    public static final String ID = "UPnP.device.UDN";
    public static final String TYPE = "UPnP.device.type";
    public static final String MANUFACTURER = "UPnP.device.manufacturer";
    public static final String MODEL_NAME = "UPnP.device.modelName";
    public static final String FRIENDLY_NAME = "UPnP.device.friendlyName";
    public static final String MANUFACTURER_URL = "UPnP.device.manufacturerURL";
    public static final String MODEL_DESCRIPTION = "UPnP.device.modelDescription";
    public static final String MODEL_NUMBER = "UPnP.device.modelNumber";
    public static final String MODEL_URL = "UPnP.device.modelURL";
    public static final String SERIAL_NUMBER = "UPnP.device.serialNumber";
    public static final String UPC = "UPnP.device.UPC";
    public static final String PRESENTATION_URL = "UPnP.presentationURL";
    public static final String PARENT_UDN = "UPnP.device.parentUDN";
    public static final String CHILDREN_UDN = "UPnP.device.childrenUDN";

    public UPnPService getService(String var1);

    public UPnPService[] getServices();

    public UPnPIcon[] getIcons(String var1);

    public Dictionary getDescriptions(String var1);
}

