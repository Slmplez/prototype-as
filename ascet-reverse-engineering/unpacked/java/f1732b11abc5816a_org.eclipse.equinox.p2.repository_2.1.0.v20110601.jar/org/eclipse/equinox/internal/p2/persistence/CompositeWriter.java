/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.runtime.URIUtil
 *  org.eclipse.equinox.p2.metadata.Version
 */
package org.eclipse.equinox.internal.p2.persistence;

import java.io.OutputStream;
import java.io.UnsupportedEncodingException;
import java.net.URI;
import org.eclipse.core.runtime.URIUtil;
import org.eclipse.equinox.internal.p2.persistence.CompositeRepositoryState;
import org.eclipse.equinox.internal.p2.persistence.XMLConstants;
import org.eclipse.equinox.internal.p2.persistence.XMLWriter;
import org.eclipse.equinox.p2.metadata.Version;

public class CompositeWriter
extends XMLWriter
implements XMLConstants {
    private static final String REPOSITORY_ELEMENT = "repository";
    private static final Version CURRENT_VERSION = Version.createOSGi((int)1, (int)0, (int)0);

    public CompositeWriter(OutputStream output, String type) throws UnsupportedEncodingException {
        super(output, new XMLWriter.ProcessingInstruction[]{XMLWriter.ProcessingInstruction.makeTargetVersionInstruction(type, CURRENT_VERSION)});
    }

    protected void writeChildren(URI[] children) {
        if (children == null || children.length == 0) {
            return;
        }
        this.start("children");
        this.attribute("size", children.length);
        int i = 0;
        while (i < children.length) {
            this.writeChild(children[i]);
            ++i;
        }
        this.end("children");
    }

    protected void writeChild(URI encodedURI) {
        String unencodedString = URIUtil.toUnencodedString((URI)encodedURI);
        this.start("child");
        this.attribute("location", unencodedString);
        this.end("child");
    }

    public void write(CompositeRepositoryState repository) {
        this.start(REPOSITORY_ELEMENT);
        this.attribute("name", repository.getName());
        this.attribute("type", repository.getType());
        this.attribute("version", repository.getVersion());
        this.attributeOptional("provider", repository.getProvider());
        this.attributeOptional("description", repository.getDescription());
        this.writeProperties(repository.getProperties());
        this.writeChildren(repository.getChildren());
        this.end(REPOSITORY_ELEMENT);
        this.flush();
    }
}

