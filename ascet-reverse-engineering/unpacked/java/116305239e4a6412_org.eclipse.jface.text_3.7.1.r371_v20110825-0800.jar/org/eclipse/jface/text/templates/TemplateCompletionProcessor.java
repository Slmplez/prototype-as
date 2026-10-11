/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.jface.text.IDocument
 *  org.eclipse.jface.text.IRegion
 *  org.eclipse.jface.text.Region
 *  org.eclipse.jface.text.templates.DocumentTemplateContext
 *  org.eclipse.jface.text.templates.Template
 *  org.eclipse.jface.text.templates.TemplateContext
 *  org.eclipse.jface.text.templates.TemplateContextType
 *  org.eclipse.jface.text.templates.TemplateException
 *  org.eclipse.swt.graphics.Image
 */
package org.eclipse.jface.text.templates;

import java.util.ArrayList;
import java.util.Collections;
import java.util.Comparator;
import org.eclipse.jface.text.IDocument;
import org.eclipse.jface.text.IRegion;
import org.eclipse.jface.text.ITextSelection;
import org.eclipse.jface.text.ITextViewer;
import org.eclipse.jface.text.Region;
import org.eclipse.jface.text.contentassist.ICompletionProposal;
import org.eclipse.jface.text.contentassist.IContentAssistProcessor;
import org.eclipse.jface.text.contentassist.IContextInformation;
import org.eclipse.jface.text.contentassist.IContextInformationValidator;
import org.eclipse.jface.text.templates.DocumentTemplateContext;
import org.eclipse.jface.text.templates.Template;
import org.eclipse.jface.text.templates.TemplateContext;
import org.eclipse.jface.text.templates.TemplateContextType;
import org.eclipse.jface.text.templates.TemplateException;
import org.eclipse.jface.text.templates.TemplateProposal;
import org.eclipse.swt.graphics.Image;

public abstract class TemplateCompletionProcessor
implements IContentAssistProcessor {
    private static final Comparator fgProposalComparator = new ProposalComparator();

    public ICompletionProposal[] computeCompletionProposals(ITextViewer viewer, int offset) {
        String prefix;
        Region region;
        TemplateContext context;
        ITextSelection selection = (ITextSelection)viewer.getSelectionProvider().getSelection();
        if (selection.getOffset() == offset) {
            offset = selection.getOffset() + selection.getLength();
        }
        if ((context = this.createContext(viewer, (IRegion)(region = new Region(offset - (prefix = this.extractPrefix(viewer, offset)).length(), prefix.length())))) == null) {
            return new ICompletionProposal[0];
        }
        context.setVariable("selection", selection.getText());
        Template[] templates = this.getTemplates(context.getContextType().getId());
        ArrayList<ICompletionProposal> matches = new ArrayList<ICompletionProposal>();
        int i = 0;
        while (i < templates.length) {
            block6: {
                Template template = templates[i];
                try {
                    context.getContextType().validate(template.getPattern());
                }
                catch (TemplateException templateException) {
                    break block6;
                }
                if (template.matches(prefix, context.getContextType().getId())) {
                    matches.add(this.createProposal(template, context, (IRegion)region, this.getRelevance(template, prefix)));
                }
            }
            ++i;
        }
        Collections.sort(matches, fgProposalComparator);
        return matches.toArray(new ICompletionProposal[matches.size()]);
    }

    protected ICompletionProposal createProposal(Template template, TemplateContext context, Region region, int relevance) {
        return this.createProposal(template, context, (IRegion)region, relevance);
    }

    protected ICompletionProposal createProposal(Template template, TemplateContext context, IRegion region, int relevance) {
        return new TemplateProposal(template, context, region, this.getImage(template), relevance);
    }

    protected abstract Template[] getTemplates(String var1);

    protected TemplateContext createContext(ITextViewer viewer, IRegion region) {
        TemplateContextType contextType = this.getContextType(viewer, region);
        if (contextType != null) {
            IDocument document = viewer.getDocument();
            return new DocumentTemplateContext(contextType, document, region.getOffset(), region.getLength());
        }
        return null;
    }

    protected abstract TemplateContextType getContextType(ITextViewer var1, IRegion var2);

    protected int getRelevance(Template template, String prefix) {
        if (template.getName().startsWith(prefix)) {
            return 90;
        }
        return 0;
    }

    /*
     * Unable to fully structure code
     */
    protected String extractPrefix(ITextViewer viewer, int offset) {
        i = offset;
        document = viewer.getDocument();
        if (i <= document.getLength()) ** GOTO lbl7
        return "";
        {
            while (Character.isJavaIdentifierPart(ch = document.getChar(i - 1))) {
                --i;
lbl7:
                // 2 sources

                if (i > 0) continue;
            }
            return document.get(i, offset - i);
        }
    }

    protected abstract Image getImage(Template var1);

    public IContextInformation[] computeContextInformation(ITextViewer viewer, int documentOffset) {
        return null;
    }

    public char[] getCompletionProposalAutoActivationCharacters() {
        return null;
    }

    public char[] getContextInformationAutoActivationCharacters() {
        return null;
    }

    public String getErrorMessage() {
        return null;
    }

    public IContextInformationValidator getContextInformationValidator() {
        return null;
    }

    private static final class ProposalComparator
    implements Comparator {
        private ProposalComparator() {
        }

        public int compare(Object o1, Object o2) {
            return ((TemplateProposal)o2).getRelevance() - ((TemplateProposal)o1).getRelevance();
        }
    }
}

