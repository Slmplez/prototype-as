/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.runtime.Assert
 *  org.eclipse.jface.dialogs.MessageDialog
 *  org.eclipse.jface.text.BadLocationException
 *  org.eclipse.jface.text.BadPositionCategoryException
 *  org.eclipse.jface.text.DocumentEvent
 *  org.eclipse.jface.text.IDocument
 *  org.eclipse.jface.text.IPositionUpdater
 *  org.eclipse.jface.text.IRegion
 *  org.eclipse.jface.text.Position
 *  org.eclipse.jface.text.Region
 *  org.eclipse.jface.text.link.ILinkedModeListener
 *  org.eclipse.jface.text.link.LinkedModeModel
 *  org.eclipse.jface.text.link.LinkedPosition
 *  org.eclipse.jface.text.link.LinkedPositionGroup
 *  org.eclipse.jface.text.templates.DocumentTemplateContext
 *  org.eclipse.jface.text.templates.Template
 *  org.eclipse.jface.text.templates.TemplateBuffer
 *  org.eclipse.jface.text.templates.TemplateContext
 *  org.eclipse.jface.text.templates.TemplateException
 *  org.eclipse.jface.text.templates.TemplateVariable
 *  org.eclipse.swt.graphics.Image
 *  org.eclipse.swt.graphics.Point
 *  org.eclipse.swt.widgets.Shell
 */
package org.eclipse.jface.text.templates;

import org.eclipse.core.runtime.Assert;
import org.eclipse.jface.dialogs.MessageDialog;
import org.eclipse.jface.text.BadLocationException;
import org.eclipse.jface.text.BadPositionCategoryException;
import org.eclipse.jface.text.DocumentEvent;
import org.eclipse.jface.text.IDocument;
import org.eclipse.jface.text.IInformationControlCreator;
import org.eclipse.jface.text.IPositionUpdater;
import org.eclipse.jface.text.IRegion;
import org.eclipse.jface.text.ITextViewer;
import org.eclipse.jface.text.Position;
import org.eclipse.jface.text.Region;
import org.eclipse.jface.text.contentassist.ICompletionProposal;
import org.eclipse.jface.text.contentassist.ICompletionProposalExtension;
import org.eclipse.jface.text.contentassist.ICompletionProposalExtension2;
import org.eclipse.jface.text.contentassist.ICompletionProposalExtension3;
import org.eclipse.jface.text.contentassist.IContextInformation;
import org.eclipse.jface.text.link.ILinkedModeListener;
import org.eclipse.jface.text.link.LinkedModeModel;
import org.eclipse.jface.text.link.LinkedModeUI;
import org.eclipse.jface.text.link.LinkedPosition;
import org.eclipse.jface.text.link.LinkedPositionGroup;
import org.eclipse.jface.text.link.ProposalPosition;
import org.eclipse.jface.text.templates.DocumentTemplateContext;
import org.eclipse.jface.text.templates.InclusivePositionUpdater;
import org.eclipse.jface.text.templates.JFaceTextTemplateMessages;
import org.eclipse.jface.text.templates.PositionBasedCompletionProposal;
import org.eclipse.jface.text.templates.Template;
import org.eclipse.jface.text.templates.TemplateBuffer;
import org.eclipse.jface.text.templates.TemplateContext;
import org.eclipse.jface.text.templates.TemplateException;
import org.eclipse.jface.text.templates.TemplateVariable;
import org.eclipse.swt.graphics.Image;
import org.eclipse.swt.graphics.Point;
import org.eclipse.swt.widgets.Shell;

public class TemplateProposal
implements ICompletionProposal,
ICompletionProposalExtension,
ICompletionProposalExtension2,
ICompletionProposalExtension3 {
    private final Template fTemplate;
    private final TemplateContext fContext;
    private final Image fImage;
    private final IRegion fRegion;
    private int fRelevance;
    private IRegion fSelectedRegion;
    private String fDisplayString;
    private InclusivePositionUpdater fUpdater;
    private IInformationControlCreator fInformationControlCreator;

    public TemplateProposal(Template template, TemplateContext context, IRegion region, Image image) {
        this(template, context, region, image, 0);
    }

    public TemplateProposal(Template template, TemplateContext context, IRegion region, Image image, int relevance) {
        Assert.isNotNull((Object)template);
        Assert.isNotNull((Object)context);
        Assert.isNotNull((Object)region);
        this.fTemplate = template;
        this.fContext = context;
        this.fImage = image;
        this.fRegion = region;
        this.fDisplayString = null;
        this.fRelevance = relevance;
    }

    public final void setInformationControlCreator(IInformationControlCreator informationControlCreator) {
        this.fInformationControlCreator = informationControlCreator;
    }

    protected final Template getTemplate() {
        return this.fTemplate;
    }

    protected final TemplateContext getContext() {
        return this.fContext;
    }

    public final void apply(IDocument document) {
    }

    public void apply(ITextViewer viewer, char trigger, int stateMask, int offset) {
        IDocument document = viewer.getDocument();
        try {
            TemplateBuffer templateBuffer;
            this.fContext.setReadOnly(false);
            int oldReplaceOffset = this.getReplaceOffset();
            try {
                templateBuffer = this.fContext.evaluate(this.fTemplate);
            }
            catch (TemplateException templateException) {
                this.fSelectedRegion = this.fRegion;
                return;
            }
            int start = this.getReplaceOffset();
            int shift = start - oldReplaceOffset;
            int end = Math.max(this.getReplaceEndOffset(), offset + shift);
            String templateString = templateBuffer.getString();
            document.replace(start, end - start, templateString);
            LinkedModeModel model = new LinkedModeModel();
            TemplateVariable[] variables = templateBuffer.getVariables();
            boolean hasPositions = false;
            int i = 0;
            while (i != variables.length) {
                TemplateVariable variable = variables[i];
                if (!variable.isUnambiguous()) {
                    LinkedPositionGroup group = new LinkedPositionGroup();
                    int[] offsets = variable.getOffsets();
                    int length = variable.getLength();
                    String[] values = variable.getValues();
                    ICompletionProposal[] proposals = new ICompletionProposal[values.length];
                    int j = 0;
                    while (j < values.length) {
                        this.ensurePositionCategoryInstalled(document, model);
                        Position pos = new Position(offsets[0] + start, length);
                        document.addPosition(this.getCategory(), pos);
                        proposals[j] = new PositionBasedCompletionProposal(values[j], pos, length);
                        ++j;
                    }
                    LinkedPosition first = proposals.length > 1 ? new ProposalPosition(document, offsets[0] + start, length, proposals) : new LinkedPosition(document, offsets[0] + start, length);
                    int j2 = 0;
                    while (j2 != offsets.length) {
                        if (j2 == 0) {
                            group.addPosition(first);
                        } else {
                            group.addPosition(new LinkedPosition(document, offsets[j2] + start, length));
                        }
                        ++j2;
                    }
                    model.addGroup(group);
                    hasPositions = true;
                }
                ++i;
            }
            if (hasPositions) {
                model.forceInstall();
                LinkedModeUI ui = new LinkedModeUI(model, viewer);
                ui.setExitPosition(viewer, this.getCaretOffset(templateBuffer) + start, 0, Integer.MAX_VALUE);
                ui.enter();
                this.fSelectedRegion = ui.getSelectedRegion();
            } else {
                this.ensurePositionCategoryRemoved(document);
                this.fSelectedRegion = new Region(this.getCaretOffset(templateBuffer) + start, 0);
            }
        }
        catch (BadLocationException e) {
            this.openErrorDialog(viewer.getTextWidget().getShell(), (Exception)((Object)e));
            this.ensurePositionCategoryRemoved(document);
            this.fSelectedRegion = this.fRegion;
        }
        catch (BadPositionCategoryException e) {
            this.openErrorDialog(viewer.getTextWidget().getShell(), (Exception)((Object)e));
            this.fSelectedRegion = this.fRegion;
        }
    }

    private void ensurePositionCategoryInstalled(final IDocument document, LinkedModeModel model) {
        if (!document.containsPositionCategory(this.getCategory())) {
            document.addPositionCategory(this.getCategory());
            this.fUpdater = new InclusivePositionUpdater(this.getCategory());
            document.addPositionUpdater((IPositionUpdater)this.fUpdater);
            model.addLinkingListener(new ILinkedModeListener(){

                public void left(LinkedModeModel environment, int flags) {
                    TemplateProposal.this.ensurePositionCategoryRemoved(document);
                }

                public void suspend(LinkedModeModel environment) {
                }

                public void resume(LinkedModeModel environment, int flags) {
                }
            });
        }
    }

    private void ensurePositionCategoryRemoved(IDocument document) {
        if (document.containsPositionCategory(this.getCategory())) {
            try {
                document.removePositionCategory(this.getCategory());
            }
            catch (BadPositionCategoryException badPositionCategoryException) {}
            document.removePositionUpdater((IPositionUpdater)this.fUpdater);
        }
    }

    private String getCategory() {
        return "TemplateProposalCategory_" + this.toString();
    }

    private int getCaretOffset(TemplateBuffer buffer) {
        TemplateVariable[] variables = buffer.getVariables();
        int i = 0;
        while (i != variables.length) {
            TemplateVariable variable = variables[i];
            if (variable.getType().equals("cursor")) {
                return variable.getOffsets()[0];
            }
            ++i;
        }
        return buffer.getString().length();
    }

    protected final int getReplaceOffset() {
        int start;
        if (this.fContext instanceof DocumentTemplateContext) {
            DocumentTemplateContext docContext = (DocumentTemplateContext)this.fContext;
            start = docContext.getStart();
        } else {
            start = this.fRegion.getOffset();
        }
        return start;
    }

    protected final int getReplaceEndOffset() {
        int end;
        if (this.fContext instanceof DocumentTemplateContext) {
            DocumentTemplateContext docContext = (DocumentTemplateContext)this.fContext;
            end = docContext.getEnd();
        } else {
            end = this.fRegion.getOffset() + this.fRegion.getLength();
        }
        return end;
    }

    public Point getSelection(IDocument document) {
        return new Point(this.fSelectedRegion.getOffset(), this.fSelectedRegion.getLength());
    }

    public String getAdditionalProposalInfo() {
        TemplateBuffer templateBuffer;
        try {
            this.fContext.setReadOnly(true);
            try {
                templateBuffer = this.fContext.evaluate(this.fTemplate);
            }
            catch (TemplateException templateException) {
                return null;
            }
        }
        catch (BadLocationException badLocationException) {
            return null;
        }
        return templateBuffer.getString();
    }

    public String getDisplayString() {
        if (this.fDisplayString == null) {
            Object[] arguments = new String[]{this.fTemplate.getName(), this.fTemplate.getDescription()};
            this.fDisplayString = JFaceTextTemplateMessages.getFormattedString("TemplateProposal.displayString", arguments);
        }
        return this.fDisplayString;
    }

    public Image getImage() {
        return this.fImage;
    }

    public IContextInformation getContextInformation() {
        return null;
    }

    private void openErrorDialog(Shell shell, Exception e) {
        MessageDialog.openError((Shell)shell, (String)JFaceTextTemplateMessages.getString("TemplateProposal.errorDialog.title"), (String)e.getMessage());
    }

    public int getRelevance() {
        return this.fRelevance;
    }

    public IInformationControlCreator getInformationControlCreator() {
        return this.fInformationControlCreator;
    }

    public void selected(ITextViewer viewer, boolean smartToggle) {
    }

    public void unselected(ITextViewer viewer) {
    }

    public boolean validate(IDocument document, int offset, DocumentEvent event) {
        try {
            int replaceOffset = this.getReplaceOffset();
            if (offset >= replaceOffset) {
                String content = document.get(replaceOffset, offset - replaceOffset);
                return this.fTemplate.getName().toLowerCase().startsWith(content.toLowerCase());
            }
        }
        catch (BadLocationException badLocationException) {}
        return false;
    }

    public CharSequence getPrefixCompletionText(IDocument document, int completionOffset) {
        return this.fTemplate.getName();
    }

    public int getPrefixCompletionStart(IDocument document, int completionOffset) {
        return this.getReplaceOffset();
    }

    public void apply(IDocument document, char trigger, int offset) {
    }

    public boolean isValidFor(IDocument document, int offset) {
        return false;
    }

    public char[] getTriggerCharacters() {
        return new char[0];
    }

    public int getContextInformationPosition() {
        return this.fRegion.getOffset();
    }
}

