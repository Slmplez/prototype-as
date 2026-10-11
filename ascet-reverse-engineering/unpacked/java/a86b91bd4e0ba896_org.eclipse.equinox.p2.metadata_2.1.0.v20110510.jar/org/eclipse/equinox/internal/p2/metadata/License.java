/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.equinox.internal.p2.metadata;

import java.io.UnsupportedEncodingException;
import java.math.BigInteger;
import java.net.URI;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
import org.eclipse.equinox.p2.metadata.ILicense;

public class License
implements ILicense {
    private final String body;
    private URI location;
    private String digest;

    public License(URI location, String body, String uuid) {
        if (body == null) {
            throw new IllegalArgumentException("body cannot be null");
        }
        this.body = body;
        this.location = location;
        this.digest = uuid;
    }

    public URI getLocation() {
        return this.location;
    }

    public String getBody() {
        return this.body;
    }

    public synchronized String getUUID() {
        if (this.digest == null) {
            this.digest = this.calculateLicenseDigest().toString(16);
        }
        return this.digest;
    }

    public boolean equals(Object obj) {
        ILicense other;
        if (obj == this) {
            return true;
        }
        if (obj == null) {
            return false;
        }
        return obj instanceof ILicense && (other = (ILicense)obj).getUUID().equals(this.getUUID());
    }

    public int hashCode() {
        return this.getUUID().hashCode();
    }

    private BigInteger calculateLicenseDigest() {
        String message = this.normalize(this.getBody());
        try {
            MessageDigest algorithm = MessageDigest.getInstance("MD5");
            algorithm.reset();
            algorithm.update(message.getBytes("UTF-8"));
            byte[] digestBytes = algorithm.digest();
            return new BigInteger(1, digestBytes);
        }
        catch (NoSuchAlgorithmException e) {
            throw new RuntimeException(e);
        }
        catch (UnsupportedEncodingException e) {
            throw new RuntimeException(e);
        }
    }

    private String normalize(String license) {
        String text = license.trim();
        StringBuffer result = new StringBuffer();
        int length = text.length();
        int i = 0;
        while (i < length) {
            char c = text.charAt(i);
            boolean foundWhitespace = false;
            while (Character.isWhitespace(c) && i < length) {
                foundWhitespace = true;
                c = text.charAt(++i);
            }
            if (foundWhitespace) {
                result.append(' ');
            }
            if (i < length) {
                result.append(c);
            }
            ++i;
        }
        return result.toString();
    }
}

