/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.equinox.p2.publisher.eclipse;

public class URLEntry {
    private String annotation;
    private String url;

    public URLEntry() {
    }

    public URLEntry(String url, String annotation) {
        this.url = url;
        this.annotation = annotation;
    }

    public void setAnnotation(String annotation) {
        this.annotation = annotation;
    }

    public String getAnnotation() {
        return this.annotation;
    }

    public void setURL(String url) {
        this.url = url;
    }

    public String getURL() {
        return this.url;
    }
}

