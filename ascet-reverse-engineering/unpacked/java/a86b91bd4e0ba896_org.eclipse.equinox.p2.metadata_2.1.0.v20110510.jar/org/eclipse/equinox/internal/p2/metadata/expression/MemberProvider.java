/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.equinox.internal.p2.core.helpers.CollectionUtils
 *  org.osgi.framework.ServiceReference
 */
package org.eclipse.equinox.internal.p2.metadata.expression;

import java.util.Dictionary;
import java.util.Enumeration;
import java.util.HashMap;
import java.util.Hashtable;
import java.util.Map;
import java.util.Set;
import org.eclipse.equinox.internal.p2.core.helpers.CollectionUtils;
import org.eclipse.equinox.p2.metadata.expression.IMemberProvider;
import org.osgi.framework.ServiceReference;

public abstract class MemberProvider
implements IMemberProvider {
    private static final MemberProvider emptyProvider = MemberProvider.create(CollectionUtils.emptyMap(), false);

    public static MemberProvider create(Object value, boolean caseInsensitive) {
        if (value instanceof Map) {
            return caseInsensitive ? new CIMapMemberProvider((Map)value) : new MapMemberProvider((Map)value);
        }
        if (value instanceof Dictionary) {
            return caseInsensitive ? new CIDictionaryMemberProvider((Dictionary)value) : new DictionaryMemberProvider((Dictionary)value);
        }
        if (value instanceof ServiceReference) {
            return new ServiceRefMemberProvider((ServiceReference)value);
        }
        throw new IllegalArgumentException();
    }

    public static MemberProvider emptyProvider() {
        return emptyProvider;
    }

    /*
     * This class specifies class file version 48.0 but uses Java 6 signatures.  Assumed Java 6.
     */
    static class CIDictionaryMemberProvider
    extends DictionaryMemberProvider {
        public CIDictionaryMemberProvider(Dictionary<String, ? extends Object> dictionary) {
            super(CIDictionaryMemberProvider.lowerCaseKeys(dictionary));
        }

        @Override
        public Object getMember(String memberName) {
            return super.getMember(memberName == null ? null : memberName.toLowerCase());
        }

        private static Dictionary<String, ? extends Object> lowerCaseKeys(Dictionary<String, ? extends Object> dictionary) {
            boolean hasUpperCase = false;
            Enumeration<String> keys = dictionary.keys();
            while (keys.hasMoreElements()) {
                String key = keys.nextElement();
                if (key.toLowerCase() == key) continue;
                hasUpperCase = true;
                break;
            }
            if (!hasUpperCase) {
                return dictionary;
            }
            Hashtable<String, Object> lcMap = new Hashtable<String, Object>(dictionary.size());
            Enumeration<String> keys2 = dictionary.keys();
            while (keys2.hasMoreElements()) {
                String key = keys2.nextElement();
                if (((Dictionary)lcMap).put(key.toLowerCase(), dictionary.get(key)) == null) continue;
                throw new IllegalArgumentException(new StringBuffer("case variants of the same key name: '").append(key).append('\'').toString());
            }
            return lcMap;
        }
    }

    /*
     * This class specifies class file version 48.0 but uses Java 6 signatures.  Assumed Java 6.
     */
    static class CIMapMemberProvider
    extends MapMemberProvider {
        public CIMapMemberProvider(Map<String, ? extends Object> map) {
            super(CIMapMemberProvider.lowerCaseKeys(map));
        }

        @Override
        public Object getMember(String memberName) {
            return super.getMember(memberName == null ? null : memberName.toLowerCase());
        }

        private static Map<String, ? extends Object> lowerCaseKeys(Map<String, ? extends Object> map) {
            boolean hasUpperCase = false;
            Set<Map.Entry<String, ? extends Object>> entrySet = map.entrySet();
            for (Map.Entry<String, ? extends Object> entry : entrySet) {
                String lowKey;
                String key = entry.getKey();
                if (key == (lowKey = key.toLowerCase())) continue;
                hasUpperCase = true;
                break;
            }
            if (!hasUpperCase) {
                return map;
            }
            HashMap<String, Object> lcMap = new HashMap<String, Object>(map.size());
            for (Map.Entry<String, ? extends Object> entry : entrySet) {
                if (lcMap.put(entry.getKey().toLowerCase(), entry.getValue()) == null) continue;
                throw new IllegalArgumentException(new StringBuffer("case variants of the same key name: '").append(entry.getKey()).append('\'').toString());
            }
            return lcMap;
        }
    }

    /*
     * This class specifies class file version 48.0 but uses Java 6 signatures.  Assumed Java 6.
     */
    static class DictionaryMemberProvider
    extends MemberProvider {
        private final Dictionary<String, ? extends Object> dictionary;

        public DictionaryMemberProvider(Dictionary<String, ? extends Object> dictionary) {
            this.dictionary = dictionary;
        }

        @Override
        public Object getMember(String memberName) {
            return this.dictionary.get(memberName);
        }
    }

    /*
     * This class specifies class file version 48.0 but uses Java 6 signatures.  Assumed Java 6.
     */
    static class MapMemberProvider
    extends MemberProvider {
        private final Map<String, ? extends Object> map;

        public MapMemberProvider(Map<String, ? extends Object> map) {
            this.map = map;
        }

        @Override
        public Object getMember(String memberName) {
            return this.map.get(memberName);
        }
    }

    /*
     * This class specifies class file version 48.0 but uses Java 6 signatures.  Assumed Java 6.
     */
    static class ServiceRefMemberProvider
    extends MemberProvider {
        private final ServiceReference<?> serviceRef;

        public ServiceRefMemberProvider(ServiceReference<?> serviceRef) {
            this.serviceRef = serviceRef;
        }

        @Override
        public Object getMember(String memberName) {
            return this.serviceRef.getProperty(memberName);
        }
    }
}

