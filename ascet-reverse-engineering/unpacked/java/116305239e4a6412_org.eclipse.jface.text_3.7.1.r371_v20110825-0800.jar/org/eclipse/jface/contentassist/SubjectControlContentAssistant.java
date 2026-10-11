/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.runtime.Assert
 */
package org.eclipse.jface.contentassist;

import org.eclipse.core.runtime.Assert;
import org.eclipse.jface.contentassist.IContentAssistSubjectControl;
import org.eclipse.jface.contentassist.ISubjectControlContentAssistant;
import org.eclipse.jface.text.contentassist.ContentAssistant;

public class SubjectControlContentAssistant
extends ContentAssistant
implements ISubjectControlContentAssistant {
    public void install(IContentAssistSubjectControl contentAssistSubjectControl) {
        Assert.isNotNull((Object)contentAssistSubjectControl);
        super.install(contentAssistSubjectControl);
    }
}

