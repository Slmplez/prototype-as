/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.swt.SWT
 *  org.eclipse.swt.graphics.RGB
 *  org.eclipse.swt.widgets.Shell
 */
package org.eclipse.jface.text.source;

import java.util.Arrays;
import org.eclipse.jface.text.DefaultAutoIndentStrategy;
import org.eclipse.jface.text.DefaultInformationControl;
import org.eclipse.jface.text.DefaultTextDoubleClickStrategy;
import org.eclipse.jface.text.IAutoEditStrategy;
import org.eclipse.jface.text.IAutoIndentStrategy;
import org.eclipse.jface.text.IInformationControl;
import org.eclipse.jface.text.IInformationControlCreator;
import org.eclipse.jface.text.ITextDoubleClickStrategy;
import org.eclipse.jface.text.ITextHover;
import org.eclipse.jface.text.IUndoManager;
import org.eclipse.jface.text.TextViewerUndoManager;
import org.eclipse.jface.text.contentassist.IContentAssistant;
import org.eclipse.jface.text.formatter.IContentFormatter;
import org.eclipse.jface.text.hyperlink.DefaultHyperlinkPresenter;
import org.eclipse.jface.text.hyperlink.IHyperlinkDetector;
import org.eclipse.jface.text.hyperlink.IHyperlinkPresenter;
import org.eclipse.jface.text.hyperlink.URLHyperlinkDetector;
import org.eclipse.jface.text.information.IInformationPresenter;
import org.eclipse.jface.text.presentation.IPresentationReconciler;
import org.eclipse.jface.text.presentation.PresentationReconciler;
import org.eclipse.jface.text.quickassist.IQuickAssistAssistant;
import org.eclipse.jface.text.reconciler.IReconciler;
import org.eclipse.jface.text.source.IAnnotationHover;
import org.eclipse.jface.text.source.ISourceViewer;
import org.eclipse.swt.SWT;
import org.eclipse.swt.graphics.RGB;
import org.eclipse.swt.widgets.Shell;

public class SourceViewerConfiguration {
    public int getTabWidth(ISourceViewer sourceViewer) {
        return 4;
    }

    public IUndoManager getUndoManager(ISourceViewer sourceViewer) {
        return new TextViewerUndoManager(25);
    }

    public IReconciler getReconciler(ISourceViewer sourceViewer) {
        return null;
    }

    public IPresentationReconciler getPresentationReconciler(ISourceViewer sourceViewer) {
        PresentationReconciler reconciler = new PresentationReconciler();
        reconciler.setDocumentPartitioning(this.getConfiguredDocumentPartitioning(sourceViewer));
        return reconciler;
    }

    public IContentFormatter getContentFormatter(ISourceViewer sourceViewer) {
        return null;
    }

    public IContentAssistant getContentAssistant(ISourceViewer sourceViewer) {
        return null;
    }

    public IQuickAssistAssistant getQuickAssistAssistant(ISourceViewer sourceViewer) {
        return null;
    }

    public IAutoIndentStrategy getAutoIndentStrategy(ISourceViewer sourceViewer, String contentType) {
        return new DefaultAutoIndentStrategy();
    }

    public IAutoEditStrategy[] getAutoEditStrategies(ISourceViewer sourceViewer, String contentType) {
        return new IAutoEditStrategy[]{this.getAutoIndentStrategy(sourceViewer, contentType)};
    }

    public String[] getDefaultPrefixes(ISourceViewer sourceViewer, String contentType) {
        return null;
    }

    public ITextDoubleClickStrategy getDoubleClickStrategy(ISourceViewer sourceViewer, String contentType) {
        return new DefaultTextDoubleClickStrategy();
    }

    public String[] getIndentPrefixes(ISourceViewer sourceViewer, String contentType) {
        return new String[]{"\t", "    ", ""};
    }

    protected String[] getIndentPrefixesForTab(int tabWidth) {
        String[] indentPrefixes = new String[tabWidth + 2];
        int i = 0;
        while (i <= tabWidth) {
            char[] spaceChars = new char[i];
            Arrays.fill(spaceChars, ' ');
            String spaces = new String(spaceChars);
            indentPrefixes[i] = i < tabWidth ? String.valueOf(spaces) + '\t' : new String(spaces);
            ++i;
        }
        indentPrefixes[tabWidth + 1] = "";
        return indentPrefixes;
    }

    public IAnnotationHover getAnnotationHover(ISourceViewer sourceViewer) {
        return null;
    }

    public IAnnotationHover getOverviewRulerAnnotationHover(ISourceViewer sourceViewer) {
        return this.getAnnotationHover(sourceViewer);
    }

    public int[] getConfiguredTextHoverStateMasks(ISourceViewer sourceViewer, String contentType) {
        return null;
    }

    public ITextHover getTextHover(ISourceViewer sourceViewer, String contentType, int stateMask) {
        if (stateMask == 255) {
            return this.getTextHover(sourceViewer, contentType);
        }
        return null;
    }

    public ITextHover getTextHover(ISourceViewer sourceViewer, String contentType) {
        return null;
    }

    public IInformationControlCreator getInformationControlCreator(ISourceViewer sourceViewer) {
        return new IInformationControlCreator(){

            public IInformationControl createInformationControl(Shell parent) {
                return new DefaultInformationControl(parent);
            }
        };
    }

    public IInformationPresenter getInformationPresenter(ISourceViewer sourceViewer) {
        return null;
    }

    public String[] getConfiguredContentTypes(ISourceViewer sourceViewer) {
        return new String[]{"__dftl_partition_content_type"};
    }

    public String getConfiguredDocumentPartitioning(ISourceViewer sourceViewer) {
        return "__dftl_partitioning";
    }

    public IHyperlinkDetector[] getHyperlinkDetectors(ISourceViewer sourceViewer) {
        if (sourceViewer == null) {
            return null;
        }
        return new IHyperlinkDetector[]{new URLHyperlinkDetector()};
    }

    public IHyperlinkPresenter getHyperlinkPresenter(ISourceViewer sourceViewer) {
        return new DefaultHyperlinkPresenter(new RGB(0, 0, 255));
    }

    public int getHyperlinkStateMask(ISourceViewer sourceViewer) {
        return SWT.MOD1;
    }
}

