/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.runtime.Assert
 */
package org.eclipse.equinox.internal.p2.metadata;

import java.util.ArrayList;
import java.util.StringTokenizer;
import org.eclipse.core.runtime.Assert;
import org.eclipse.equinox.p2.metadata.IArtifactKey;
import org.eclipse.equinox.p2.metadata.Version;
import org.eclipse.equinox.p2.metadata.expression.IMemberProvider;

public class ArtifactKey
implements IArtifactKey,
IMemberProvider {
    private static final String SEPARATOR = ",";
    public static final String MEMBER_ID = "id";
    public static final String MEMBER_CLASSIFIER = "classifier";
    public static final String MEMBER_VERSION = "version";
    private final String id;
    private final String classifier;
    private final Version version;

    private static String[] getArrayFromList(String stringList, String separator) {
        if (stringList == null || stringList.trim().length() == 0) {
            return new String[0];
        }
        ArrayList<String> list = new ArrayList<String>();
        boolean separatorSeen = true;
        StringTokenizer tokens = new StringTokenizer(stringList, separator, true);
        while (tokens.hasMoreTokens()) {
            String token = tokens.nextToken().trim();
            if (token.equals(separator)) {
                if (separatorSeen) {
                    list.add("");
                }
                separatorSeen = true;
                continue;
            }
            separatorSeen = false;
            if (token.length() == 0) continue;
            list.add(token);
        }
        if (separatorSeen) {
            list.add("");
        }
        return list.toArray(new String[list.size()]);
    }

    public static IArtifactKey parse(String specification) {
        String[] parts = ArtifactKey.getArrayFromList(specification, SEPARATOR);
        if (parts.length < 2 || parts.length > 3) {
            throw new IllegalArgumentException("Unexpected number of parts in artifact key: " + specification);
        }
        Version version = Version.emptyVersion;
        if (parts.length == 3 && parts[2].trim().length() > 0) {
            version = Version.parseVersion(parts[2]);
        }
        try {
            return new ArtifactKey(parts[0], parts[1], version);
        }
        catch (IllegalArgumentException e) {
            throw (IllegalArgumentException)new IllegalArgumentException("Wrong version syntax in artifact key: " + specification).initCause(e);
        }
    }

    public ArtifactKey(String classifier, String id, Version version) {
        Assert.isNotNull((Object)classifier);
        Assert.isNotNull((Object)id);
        Assert.isNotNull((Object)version);
        if (classifier.indexOf(SEPARATOR) != -1) {
            throw new IllegalArgumentException("comma not allowed in classifier");
        }
        if (id.indexOf(SEPARATOR) != -1) {
            throw new IllegalArgumentException("comma not allowed in id");
        }
        this.classifier = classifier;
        this.id = id;
        this.version = version;
    }

    public ArtifactKey(IArtifactKey artifactKey) {
        this.classifier = artifactKey.getClassifier();
        this.id = artifactKey.getId();
        this.version = artifactKey.getVersion();
    }

    public String getClassifier() {
        return this.classifier;
    }

    public Version getVersion() {
        return this.version;
    }

    public int hashCode() {
        int hash = this.id.hashCode();
        hash = 17 * hash + this.getVersion().hashCode();
        hash = 17 * hash + this.classifier.hashCode();
        return hash;
    }

    public String toString() {
        return String.valueOf(this.classifier) + SEPARATOR + this.id + SEPARATOR + this.getVersion();
    }

    public boolean equals(Object obj) {
        if (!(obj instanceof IArtifactKey)) {
            return false;
        }
        IArtifactKey ak = (IArtifactKey)obj;
        return ak.getId().equals(this.id) && ak.getVersion().equals(this.getVersion()) && ak.getClassifier().equals(this.classifier);
    }

    public String getId() {
        return this.id;
    }

    public String toExternalForm() {
        StringBuffer data = new StringBuffer(this.classifier).append(SEPARATOR);
        data.append(this.id).append(SEPARATOR);
        data.append(this.version.toString());
        return data.toString();
    }

    public Object getMember(String memberName) {
        if (MEMBER_ID == memberName) {
            return this.id;
        }
        if (MEMBER_VERSION == memberName) {
            return this.version;
        }
        if (MEMBER_CLASSIFIER == memberName) {
            return this.classifier;
        }
        throw new IllegalArgumentException("No such member: " + memberName);
    }
}

