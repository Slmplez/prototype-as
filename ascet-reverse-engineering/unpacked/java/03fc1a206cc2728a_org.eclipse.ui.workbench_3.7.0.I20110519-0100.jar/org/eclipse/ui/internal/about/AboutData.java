/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  com.ibm.icu.text.Collator
 *  org.eclipse.jface.resource.ImageDescriptor
 */
package org.eclipse.ui.internal.about;

import com.ibm.icu.text.Collator;
import java.io.IOException;
import java.net.URL;
import java.util.Arrays;
import java.util.Collections;
import java.util.Comparator;
import java.util.List;
import java.util.Locale;
import org.eclipse.jface.resource.ImageDescriptor;

public abstract class AboutData {
    private String providerName;
    private String name;
    private String version;
    private String id;
    private String versionedId = null;

    protected AboutData(String providerName, String name, String version, String id) {
        this.providerName = providerName == null ? "" : providerName;
        this.name = name == null ? "" : name;
        this.version = version == null ? "" : version;
        this.id = id == null ? "" : id;
    }

    public String getId() {
        return this.id;
    }

    public String getName() {
        return this.name;
    }

    public String getProviderName() {
        return this.providerName;
    }

    public String getVersion() {
        return this.version;
    }

    public String getVersionedId() {
        if (this.versionedId == null) {
            this.versionedId = String.valueOf(this.getId()) + "_" + this.getVersion();
        }
        return this.versionedId;
    }

    private static void reverse(AboutData[] infos) {
        List<AboutData> infoList = Arrays.asList(infos);
        Collections.reverse(infoList);
        int i = 0;
        while (i < infos.length) {
            infos[i] = infoList.get(i);
            ++i;
        }
    }

    public static void sortByProvider(boolean reverse, AboutData[] infos) {
        if (reverse) {
            AboutData.reverse(infos);
            return;
        }
        Arrays.sort(infos, new Comparator(){
            Collator collator = Collator.getInstance((Locale)Locale.getDefault());

            public int compare(Object a, Object b) {
                String provider2;
                AboutData info1 = (AboutData)a;
                AboutData info2 = (AboutData)b;
                String provider1 = info1.getProviderName();
                if (!provider1.equals(provider2 = info2.getProviderName())) {
                    return this.collator.compare(provider1, provider2);
                }
                return this.collator.compare(info1.getName(), info2.getName());
            }
        });
    }

    public static void sortByName(boolean reverse, AboutData[] infos) {
        if (reverse) {
            AboutData.reverse(infos);
            return;
        }
        Arrays.sort(infos, new Comparator(){
            Collator collator = Collator.getInstance((Locale)Locale.getDefault());

            public int compare(Object a, Object b) {
                AboutData info1 = (AboutData)a;
                AboutData info2 = (AboutData)b;
                return this.collator.compare(info1.getName(), info2.getName());
            }
        });
    }

    public static void sortByVersion(boolean reverse, AboutData[] infos) {
        if (reverse) {
            AboutData.reverse(infos);
            return;
        }
        Arrays.sort(infos, new Comparator(){
            Collator collator = Collator.getInstance((Locale)Locale.getDefault());

            public int compare(Object a, Object b) {
                String version2;
                AboutData info1 = (AboutData)a;
                AboutData info2 = (AboutData)b;
                String version1 = info1.getVersion();
                if (!version1.equals(version2 = info2.getVersion())) {
                    return this.collator.compare(version1, version2);
                }
                return this.collator.compare(info1.getName(), info2.getName());
            }
        });
    }

    public static void sortById(boolean reverse, AboutData[] infos) {
        if (reverse) {
            AboutData.reverse(infos);
            return;
        }
        Arrays.sort(infos, new Comparator(){
            Collator collator = Collator.getInstance((Locale)Locale.getDefault());

            public int compare(Object a, Object b) {
                String id2;
                AboutData info1 = (AboutData)a;
                AboutData info2 = (AboutData)b;
                String id1 = info1.getId();
                if (!id1.equals(id2 = info2.getId())) {
                    return this.collator.compare(id1, id2);
                }
                return this.collator.compare(info1.getName(), info2.getName());
            }
        });
    }

    protected static URL getURL(String value) {
        try {
            if (value != null) {
                return new URL(value);
            }
        }
        catch (IOException iOException) {}
        return null;
    }

    protected static ImageDescriptor getImage(URL url) {
        return url == null ? null : ImageDescriptor.createFromURL((URL)url);
    }

    protected static ImageDescriptor getImage(String value) {
        return AboutData.getImage(AboutData.getURL(value));
    }
}

