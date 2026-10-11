/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.ui.internal.about;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import org.eclipse.ui.internal.about.AboutBundleGroupData;

public class AboutFeaturesButtonManager {
    private Map providerMap = new HashMap();

    public boolean add(AboutBundleGroupData info) {
        Long crc = info.getFeatureImageCrc();
        if (crc == null) {
            return false;
        }
        String providerName = info.getProviderName();
        Key key = new Key(providerName, crc);
        ArrayList<AboutBundleGroupData> infoList = (ArrayList<AboutBundleGroupData>)this.providerMap.get(key);
        if (infoList != null) {
            infoList.add(info);
            return false;
        }
        infoList = new ArrayList<AboutBundleGroupData>();
        infoList.add(info);
        this.providerMap.put(key, infoList);
        return true;
    }

    public AboutBundleGroupData[] getRelatedInfos(AboutBundleGroupData info) {
        Long crc = info.getFeatureImageCrc();
        if (crc == null) {
            return new AboutBundleGroupData[0];
        }
        String providerName = info.getProviderName();
        Key key = new Key(providerName, crc);
        List infoList = (List)this.providerMap.get(key);
        if (infoList == null) {
            return new AboutBundleGroupData[0];
        }
        return infoList.toArray(new AboutBundleGroupData[0]);
    }

    private static class Key {
        public String providerName;
        public Long crc;

        public Key(String providerName, Long crc) {
            this.providerName = providerName;
            this.crc = crc;
        }

        public boolean equals(Object o) {
            if (!(o instanceof Key)) {
                return false;
            }
            Key other = (Key)o;
            if (!this.providerName.equals(other.providerName)) {
                return false;
            }
            return this.crc.equals(other.crc);
        }

        public int hashCode() {
            return this.providerName.hashCode();
        }
    }
}

