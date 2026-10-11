/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.jface.contentassist;

import org.eclipse.jface.contentassist.IContentAssistSubjectControl;
import org.eclipse.jface.text.contentassist.IContextInformation;
import org.eclipse.jface.text.contentassist.IContextInformationValidator;

public interface ISubjectControlContextInformationValidator
extends IContextInformationValidator {
    public void install(IContextInformation var1, IContentAssistSubjectControl var2, int var3);
}

