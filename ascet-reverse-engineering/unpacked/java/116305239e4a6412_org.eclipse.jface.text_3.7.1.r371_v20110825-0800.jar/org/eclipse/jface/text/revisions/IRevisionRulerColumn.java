/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.jface.text.revisions;

import org.eclipse.jface.text.revisions.RevisionInformation;
import org.eclipse.jface.text.source.IVerticalRulerColumn;
import org.eclipse.jface.text.source.IVerticalRulerInfo;
import org.eclipse.jface.text.source.IVerticalRulerInfoExtension;

public interface IRevisionRulerColumn
extends IVerticalRulerColumn,
IVerticalRulerInfo,
IVerticalRulerInfoExtension {
    public void setRevisionInformation(RevisionInformation var1);
}

