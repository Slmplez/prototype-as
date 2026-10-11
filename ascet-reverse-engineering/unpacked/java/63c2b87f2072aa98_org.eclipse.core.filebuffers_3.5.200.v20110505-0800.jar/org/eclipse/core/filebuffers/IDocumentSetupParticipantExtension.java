/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.runtime.IPath
 *  org.eclipse.jface.text.IDocument
 */
package org.eclipse.core.filebuffers;

import org.eclipse.core.filebuffers.LocationKind;
import org.eclipse.core.runtime.IPath;
import org.eclipse.jface.text.IDocument;

public interface IDocumentSetupParticipantExtension {
    public void setup(IDocument var1, IPath var2, LocationKind var3);
}

