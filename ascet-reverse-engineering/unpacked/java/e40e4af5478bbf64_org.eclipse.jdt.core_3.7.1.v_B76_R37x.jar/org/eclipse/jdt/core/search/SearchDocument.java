/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.jdt.core.search;

import org.eclipse.jdt.core.search.SearchParticipant;
import org.eclipse.jdt.internal.compiler.SourceElementParser;
import org.eclipse.jdt.internal.core.index.Index;

public abstract class SearchDocument {
    private Index index;
    private String containerRelativePath;
    private SourceElementParser parser;
    private String documentPath;
    private SearchParticipant participant;

    protected SearchDocument(String documentPath, SearchParticipant participant) {
        this.documentPath = documentPath;
        this.participant = participant;
    }

    public void addIndexEntry(char[] category, char[] key) {
        if (this.index != null) {
            this.index.addIndexEntry(category, key, this.getContainerRelativePath());
        }
    }

    public abstract byte[] getByteContents();

    public abstract char[] getCharContents();

    private String getContainerRelativePath() {
        if (this.containerRelativePath == null) {
            this.containerRelativePath = this.index.containerRelativePath(this.getPath());
        }
        return this.containerRelativePath;
    }

    public abstract String getEncoding();

    public SourceElementParser getParser() {
        return this.parser;
    }

    public final SearchParticipant getParticipant() {
        return this.participant;
    }

    public final String getPath() {
        return this.documentPath;
    }

    public void removeAllIndexEntries() {
        if (this.index != null) {
            this.index.remove(this.getContainerRelativePath());
        }
    }

    public void setIndex(Index indexToSet) {
        this.index = indexToSet;
    }

    public void setParser(SourceElementParser sourceElementParser) {
        this.parser = sourceElementParser;
    }
}

