/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.commands.operations.IOperationApprover
 *  org.eclipse.core.commands.operations.IOperationHistory
 *  org.eclipse.core.commands.operations.IUndoContext
 *  org.eclipse.core.commands.operations.OperationHistoryFactory
 *  org.eclipse.core.runtime.Assert
 *  org.eclipse.core.runtime.CoreException
 *  org.eclipse.core.runtime.IConfigurationElement
 *  org.eclipse.core.runtime.ILog
 *  org.eclipse.core.runtime.IProgressMonitor
 *  org.eclipse.core.runtime.ISafeRunnable
 *  org.eclipse.core.runtime.IStatus
 *  org.eclipse.core.runtime.NullProgressMonitor
 *  org.eclipse.core.runtime.Platform
 *  org.eclipse.core.runtime.SafeRunner
 *  org.eclipse.core.runtime.Status
 *  org.eclipse.jface.action.Action
 *  org.eclipse.jface.action.GroupMarker
 *  org.eclipse.jface.action.IAction
 *  org.eclipse.jface.action.IContributionItem
 *  org.eclipse.jface.action.IMenuListener
 *  org.eclipse.jface.action.IMenuManager
 *  org.eclipse.jface.action.IStatusLineManager
 *  org.eclipse.jface.action.MenuManager
 *  org.eclipse.jface.action.Separator
 *  org.eclipse.jface.dialogs.ErrorDialog
 *  org.eclipse.jface.dialogs.MessageDialog
 *  org.eclipse.jface.operation.IRunnableWithProgress
 *  org.eclipse.jface.preference.IPreferenceStore
 *  org.eclipse.jface.preference.PreferenceConverter
 *  org.eclipse.jface.resource.ImageDescriptor
 *  org.eclipse.jface.resource.JFaceResources
 *  org.eclipse.jface.text.AbstractInformationControlManager
 *  org.eclipse.jface.text.BadLocationException
 *  org.eclipse.jface.text.DefaultLineTracker
 *  org.eclipse.jface.text.DocumentEvent
 *  org.eclipse.jface.text.IAutoEditStrategy
 *  org.eclipse.jface.text.IDocument
 *  org.eclipse.jface.text.IDocumentListener
 *  org.eclipse.jface.text.IFindReplaceTarget
 *  org.eclipse.jface.text.IFindReplaceTargetExtension
 *  org.eclipse.jface.text.IInformationControlCreator
 *  org.eclipse.jface.text.ILineTracker
 *  org.eclipse.jface.text.IMarkRegionTarget
 *  org.eclipse.jface.text.IRegion
 *  org.eclipse.jface.text.IRewriteTarget
 *  org.eclipse.jface.text.ISelectionValidator
 *  org.eclipse.jface.text.ITextHover
 *  org.eclipse.jface.text.ITextInputListener
 *  org.eclipse.jface.text.ITextListener
 *  org.eclipse.jface.text.ITextSelection
 *  org.eclipse.jface.text.ITextViewer
 *  org.eclipse.jface.text.ITextViewerExtension
 *  org.eclipse.jface.text.ITextViewerExtension2
 *  org.eclipse.jface.text.ITextViewerExtension4
 *  org.eclipse.jface.text.ITextViewerExtension5
 *  org.eclipse.jface.text.ITextViewerExtension6
 *  org.eclipse.jface.text.ITextViewerExtension7
 *  org.eclipse.jface.text.ITextViewerExtension8
 *  org.eclipse.jface.text.ITextViewerExtension8$EnrichMode
 *  org.eclipse.jface.text.IUndoManager
 *  org.eclipse.jface.text.IUndoManagerExtension
 *  org.eclipse.jface.text.Position
 *  org.eclipse.jface.text.Region
 *  org.eclipse.jface.text.TabsToSpacesConverter
 *  org.eclipse.jface.text.TextEvent
 *  org.eclipse.jface.text.TextSelection
 *  org.eclipse.jface.text.TextUtilities
 *  org.eclipse.jface.text.hyperlink.IHyperlinkDetector
 *  org.eclipse.jface.text.information.IInformationProviderExtension2
 *  org.eclipse.jface.text.link.LinkedModeModel
 *  org.eclipse.jface.text.link.LinkedPosition
 *  org.eclipse.jface.text.quickassist.IQuickAssistAssistant
 *  org.eclipse.jface.text.revisions.RevisionInformation
 *  org.eclipse.jface.text.source.Annotation
 *  org.eclipse.jface.text.source.CompositeRuler
 *  org.eclipse.jface.text.source.IAnnotationHover
 *  org.eclipse.jface.text.source.IAnnotationModel
 *  org.eclipse.jface.text.source.ISourceViewer
 *  org.eclipse.jface.text.source.ISourceViewerExtension3
 *  org.eclipse.jface.text.source.ISourceViewerExtension4
 *  org.eclipse.jface.text.source.IVerticalRuler
 *  org.eclipse.jface.text.source.IVerticalRulerColumn
 *  org.eclipse.jface.text.source.IVerticalRulerExtension
 *  org.eclipse.jface.text.source.SourceViewer
 *  org.eclipse.jface.text.source.SourceViewerConfiguration
 *  org.eclipse.jface.text.source.VerticalRuler
 *  org.eclipse.jface.util.IPropertyChangeListener
 *  org.eclipse.jface.util.PropertyChangeEvent
 *  org.eclipse.jface.util.SafeRunnable
 *  org.eclipse.jface.viewers.IPostSelectionProvider
 *  org.eclipse.jface.viewers.ISelection
 *  org.eclipse.jface.viewers.ISelectionChangedListener
 *  org.eclipse.jface.viewers.ISelectionProvider
 *  org.eclipse.jface.viewers.SelectionChangedEvent
 *  org.eclipse.jface.viewers.StructuredSelection
 *  org.eclipse.jface.window.IShellProvider
 *  org.eclipse.swt.custom.BusyIndicator
 *  org.eclipse.swt.custom.StyledText
 *  org.eclipse.swt.custom.VerifyKeyListener
 *  org.eclipse.swt.dnd.DragSource
 *  org.eclipse.swt.dnd.DragSourceAdapter
 *  org.eclipse.swt.dnd.DragSourceEvent
 *  org.eclipse.swt.dnd.DragSourceListener
 *  org.eclipse.swt.dnd.DropTargetAdapter
 *  org.eclipse.swt.dnd.DropTargetEvent
 *  org.eclipse.swt.dnd.DropTargetListener
 *  org.eclipse.swt.dnd.TextTransfer
 *  org.eclipse.swt.dnd.Transfer
 *  org.eclipse.swt.events.KeyEvent
 *  org.eclipse.swt.events.KeyListener
 *  org.eclipse.swt.events.MouseEvent
 *  org.eclipse.swt.events.MouseListener
 *  org.eclipse.swt.events.VerifyEvent
 *  org.eclipse.swt.events.VerifyListener
 *  org.eclipse.swt.graphics.Color
 *  org.eclipse.swt.graphics.Device
 *  org.eclipse.swt.graphics.Drawable
 *  org.eclipse.swt.graphics.Font
 *  org.eclipse.swt.graphics.FontData
 *  org.eclipse.swt.graphics.GC
 *  org.eclipse.swt.graphics.Image
 *  org.eclipse.swt.graphics.ImageData
 *  org.eclipse.swt.graphics.PaletteData
 *  org.eclipse.swt.graphics.Point
 *  org.eclipse.swt.graphics.RGB
 *  org.eclipse.swt.widgets.Canvas
 *  org.eclipse.swt.widgets.Caret
 *  org.eclipse.swt.widgets.Composite
 *  org.eclipse.swt.widgets.Control
 *  org.eclipse.swt.widgets.Display
 *  org.eclipse.swt.widgets.Event
 *  org.eclipse.swt.widgets.Listener
 *  org.eclipse.swt.widgets.Menu
 *  org.eclipse.swt.widgets.Shell
 *  org.eclipse.text.undo.DocumentUndoManagerRegistry
 *  org.eclipse.text.undo.IDocumentUndoManager
 *  org.eclipse.ui.IActionBars
 *  org.eclipse.ui.IEditorDescriptor
 *  org.eclipse.ui.IEditorInput
 *  org.eclipse.ui.IEditorPart
 *  org.eclipse.ui.IEditorRegistry
 *  org.eclipse.ui.IEditorSite
 *  org.eclipse.ui.IKeyBindingService
 *  org.eclipse.ui.IMemento
 *  org.eclipse.ui.INavigationLocation
 *  org.eclipse.ui.INavigationLocationProvider
 *  org.eclipse.ui.IPartListener
 *  org.eclipse.ui.IPartService
 *  org.eclipse.ui.IPersistableEditor
 *  org.eclipse.ui.IReusableEditor
 *  org.eclipse.ui.ISaveablesLifecycleListener
 *  org.eclipse.ui.ISaveablesSource
 *  org.eclipse.ui.IWindowListener
 *  org.eclipse.ui.IWorkbenchPart
 *  org.eclipse.ui.IWorkbenchPartSite
 *  org.eclipse.ui.IWorkbenchWindow
 *  org.eclipse.ui.PartInitException
 *  org.eclipse.ui.PlatformUI
 *  org.eclipse.ui.Saveable
 *  org.eclipse.ui.SaveablesLifecycleEvent
 *  org.eclipse.ui.actions.ActionFactory
 *  org.eclipse.ui.actions.ActionFactory$IWorkbenchAction
 *  org.eclipse.ui.actions.CommandNotMappedException
 *  org.eclipse.ui.actions.ContributedAction
 *  org.eclipse.ui.dialogs.PropertyDialogAction
 *  org.eclipse.ui.dnd.IDragAndDropService
 *  org.eclipse.ui.operations.LinearUndoViolationUserApprover
 *  org.eclipse.ui.operations.NonLocalUndoUserApprover
 *  org.eclipse.ui.operations.OperationHistoryActionHandler
 *  org.eclipse.ui.operations.RedoActionHandler
 *  org.eclipse.ui.operations.UndoActionHandler
 *  org.eclipse.ui.part.EditorPart
 *  org.eclipse.ui.services.IServiceLocator
 *  org.osgi.framework.Bundle
 */
package org.eclipse.ui.texteditor;

import java.lang.reflect.InvocationTargetException;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.ResourceBundle;
import org.eclipse.core.commands.operations.IOperationApprover;
import org.eclipse.core.commands.operations.IOperationHistory;
import org.eclipse.core.commands.operations.IUndoContext;
import org.eclipse.core.commands.operations.OperationHistoryFactory;
import org.eclipse.core.runtime.Assert;
import org.eclipse.core.runtime.CoreException;
import org.eclipse.core.runtime.IConfigurationElement;
import org.eclipse.core.runtime.ILog;
import org.eclipse.core.runtime.IProgressMonitor;
import org.eclipse.core.runtime.ISafeRunnable;
import org.eclipse.core.runtime.IStatus;
import org.eclipse.core.runtime.NullProgressMonitor;
import org.eclipse.core.runtime.Platform;
import org.eclipse.core.runtime.SafeRunner;
import org.eclipse.core.runtime.Status;
import org.eclipse.jface.action.Action;
import org.eclipse.jface.action.GroupMarker;
import org.eclipse.jface.action.IAction;
import org.eclipse.jface.action.IContributionItem;
import org.eclipse.jface.action.IMenuListener;
import org.eclipse.jface.action.IMenuManager;
import org.eclipse.jface.action.IStatusLineManager;
import org.eclipse.jface.action.MenuManager;
import org.eclipse.jface.action.Separator;
import org.eclipse.jface.dialogs.ErrorDialog;
import org.eclipse.jface.dialogs.MessageDialog;
import org.eclipse.jface.operation.IRunnableWithProgress;
import org.eclipse.jface.preference.IPreferenceStore;
import org.eclipse.jface.preference.PreferenceConverter;
import org.eclipse.jface.resource.ImageDescriptor;
import org.eclipse.jface.resource.JFaceResources;
import org.eclipse.jface.text.AbstractInformationControlManager;
import org.eclipse.jface.text.BadLocationException;
import org.eclipse.jface.text.DefaultLineTracker;
import org.eclipse.jface.text.DocumentEvent;
import org.eclipse.jface.text.IAutoEditStrategy;
import org.eclipse.jface.text.IDocument;
import org.eclipse.jface.text.IDocumentListener;
import org.eclipse.jface.text.IFindReplaceTarget;
import org.eclipse.jface.text.IFindReplaceTargetExtension;
import org.eclipse.jface.text.IInformationControlCreator;
import org.eclipse.jface.text.ILineTracker;
import org.eclipse.jface.text.IMarkRegionTarget;
import org.eclipse.jface.text.IRegion;
import org.eclipse.jface.text.IRewriteTarget;
import org.eclipse.jface.text.ISelectionValidator;
import org.eclipse.jface.text.ITextHover;
import org.eclipse.jface.text.ITextInputListener;
import org.eclipse.jface.text.ITextListener;
import org.eclipse.jface.text.ITextSelection;
import org.eclipse.jface.text.ITextViewer;
import org.eclipse.jface.text.ITextViewerExtension;
import org.eclipse.jface.text.ITextViewerExtension2;
import org.eclipse.jface.text.ITextViewerExtension4;
import org.eclipse.jface.text.ITextViewerExtension5;
import org.eclipse.jface.text.ITextViewerExtension6;
import org.eclipse.jface.text.ITextViewerExtension7;
import org.eclipse.jface.text.ITextViewerExtension8;
import org.eclipse.jface.text.IUndoManager;
import org.eclipse.jface.text.IUndoManagerExtension;
import org.eclipse.jface.text.Position;
import org.eclipse.jface.text.Region;
import org.eclipse.jface.text.TabsToSpacesConverter;
import org.eclipse.jface.text.TextEvent;
import org.eclipse.jface.text.TextSelection;
import org.eclipse.jface.text.TextUtilities;
import org.eclipse.jface.text.hyperlink.IHyperlinkDetector;
import org.eclipse.jface.text.information.IInformationProviderExtension2;
import org.eclipse.jface.text.link.LinkedModeModel;
import org.eclipse.jface.text.link.LinkedPosition;
import org.eclipse.jface.text.quickassist.IQuickAssistAssistant;
import org.eclipse.jface.text.revisions.RevisionInformation;
import org.eclipse.jface.text.source.Annotation;
import org.eclipse.jface.text.source.CompositeRuler;
import org.eclipse.jface.text.source.IAnnotationHover;
import org.eclipse.jface.text.source.IAnnotationModel;
import org.eclipse.jface.text.source.ISourceViewer;
import org.eclipse.jface.text.source.ISourceViewerExtension3;
import org.eclipse.jface.text.source.ISourceViewerExtension4;
import org.eclipse.jface.text.source.IVerticalRuler;
import org.eclipse.jface.text.source.IVerticalRulerColumn;
import org.eclipse.jface.text.source.IVerticalRulerExtension;
import org.eclipse.jface.text.source.SourceViewer;
import org.eclipse.jface.text.source.SourceViewerConfiguration;
import org.eclipse.jface.text.source.VerticalRuler;
import org.eclipse.jface.util.IPropertyChangeListener;
import org.eclipse.jface.util.PropertyChangeEvent;
import org.eclipse.jface.util.SafeRunnable;
import org.eclipse.jface.viewers.IPostSelectionProvider;
import org.eclipse.jface.viewers.ISelection;
import org.eclipse.jface.viewers.ISelectionChangedListener;
import org.eclipse.jface.viewers.ISelectionProvider;
import org.eclipse.jface.viewers.SelectionChangedEvent;
import org.eclipse.jface.viewers.StructuredSelection;
import org.eclipse.jface.window.IShellProvider;
import org.eclipse.swt.custom.BusyIndicator;
import org.eclipse.swt.custom.StyledText;
import org.eclipse.swt.custom.VerifyKeyListener;
import org.eclipse.swt.dnd.DragSource;
import org.eclipse.swt.dnd.DragSourceAdapter;
import org.eclipse.swt.dnd.DragSourceEvent;
import org.eclipse.swt.dnd.DragSourceListener;
import org.eclipse.swt.dnd.DropTargetAdapter;
import org.eclipse.swt.dnd.DropTargetEvent;
import org.eclipse.swt.dnd.DropTargetListener;
import org.eclipse.swt.dnd.TextTransfer;
import org.eclipse.swt.dnd.Transfer;
import org.eclipse.swt.events.KeyEvent;
import org.eclipse.swt.events.KeyListener;
import org.eclipse.swt.events.MouseEvent;
import org.eclipse.swt.events.MouseListener;
import org.eclipse.swt.events.VerifyEvent;
import org.eclipse.swt.events.VerifyListener;
import org.eclipse.swt.graphics.Color;
import org.eclipse.swt.graphics.Device;
import org.eclipse.swt.graphics.Drawable;
import org.eclipse.swt.graphics.Font;
import org.eclipse.swt.graphics.FontData;
import org.eclipse.swt.graphics.GC;
import org.eclipse.swt.graphics.Image;
import org.eclipse.swt.graphics.ImageData;
import org.eclipse.swt.graphics.PaletteData;
import org.eclipse.swt.graphics.Point;
import org.eclipse.swt.graphics.RGB;
import org.eclipse.swt.widgets.Canvas;
import org.eclipse.swt.widgets.Caret;
import org.eclipse.swt.widgets.Composite;
import org.eclipse.swt.widgets.Control;
import org.eclipse.swt.widgets.Display;
import org.eclipse.swt.widgets.Event;
import org.eclipse.swt.widgets.Listener;
import org.eclipse.swt.widgets.Menu;
import org.eclipse.swt.widgets.Shell;
import org.eclipse.text.undo.DocumentUndoManagerRegistry;
import org.eclipse.text.undo.IDocumentUndoManager;
import org.eclipse.ui.IActionBars;
import org.eclipse.ui.IEditorDescriptor;
import org.eclipse.ui.IEditorInput;
import org.eclipse.ui.IEditorPart;
import org.eclipse.ui.IEditorRegistry;
import org.eclipse.ui.IEditorSite;
import org.eclipse.ui.IKeyBindingService;
import org.eclipse.ui.IMemento;
import org.eclipse.ui.INavigationLocation;
import org.eclipse.ui.INavigationLocationProvider;
import org.eclipse.ui.IPartListener;
import org.eclipse.ui.IPartService;
import org.eclipse.ui.IPersistableEditor;
import org.eclipse.ui.IReusableEditor;
import org.eclipse.ui.ISaveablesLifecycleListener;
import org.eclipse.ui.ISaveablesSource;
import org.eclipse.ui.IWindowListener;
import org.eclipse.ui.IWorkbenchPart;
import org.eclipse.ui.IWorkbenchPartSite;
import org.eclipse.ui.IWorkbenchWindow;
import org.eclipse.ui.PartInitException;
import org.eclipse.ui.PlatformUI;
import org.eclipse.ui.Saveable;
import org.eclipse.ui.SaveablesLifecycleEvent;
import org.eclipse.ui.actions.ActionFactory;
import org.eclipse.ui.actions.CommandNotMappedException;
import org.eclipse.ui.actions.ContributedAction;
import org.eclipse.ui.dialogs.PropertyDialogAction;
import org.eclipse.ui.dnd.IDragAndDropService;
import org.eclipse.ui.internal.texteditor.EditPosition;
import org.eclipse.ui.internal.texteditor.FocusedInformationPresenter;
import org.eclipse.ui.internal.texteditor.NLSUtility;
import org.eclipse.ui.internal.texteditor.TextEditorPlugin;
import org.eclipse.ui.internal.texteditor.rulers.StringSetSerializer;
import org.eclipse.ui.operations.LinearUndoViolationUserApprover;
import org.eclipse.ui.operations.NonLocalUndoUserApprover;
import org.eclipse.ui.operations.OperationHistoryActionHandler;
import org.eclipse.ui.operations.RedoActionHandler;
import org.eclipse.ui.operations.UndoActionHandler;
import org.eclipse.ui.part.EditorPart;
import org.eclipse.ui.services.IServiceLocator;
import org.eclipse.ui.texteditor.AbstractTextEditor;
import org.eclipse.ui.texteditor.BlockSelectionModeToggleAction;
import org.eclipse.ui.texteditor.CaseAction;
import org.eclipse.ui.texteditor.ConfigurationElementSorter;
import org.eclipse.ui.texteditor.ContentAssistAction;
import org.eclipse.ui.texteditor.DeleteLineAction;
import org.eclipse.ui.texteditor.EditorMessages;
import org.eclipse.ui.texteditor.EditorStatusLine;
import org.eclipse.ui.texteditor.FindNextAction;
import org.eclipse.ui.texteditor.FindReplaceAction;
import org.eclipse.ui.texteditor.FindReplaceTarget;
import org.eclipse.ui.texteditor.GotoAnnotationAction;
import org.eclipse.ui.texteditor.GotoLineAction;
import org.eclipse.ui.texteditor.HippieCompleteAction;
import org.eclipse.ui.texteditor.IAbstractTextEditorHelpContextIds;
import org.eclipse.ui.texteditor.IDeleteLineTarget;
import org.eclipse.ui.texteditor.IDocumentProvider;
import org.eclipse.ui.texteditor.IDocumentProviderExtension;
import org.eclipse.ui.texteditor.IDocumentProviderExtension2;
import org.eclipse.ui.texteditor.IDocumentProviderExtension3;
import org.eclipse.ui.texteditor.IDocumentProviderExtension5;
import org.eclipse.ui.texteditor.IEditorStatusLine;
import org.eclipse.ui.texteditor.IElementStateListener;
import org.eclipse.ui.texteditor.IElementStateListenerExtension;
import org.eclipse.ui.texteditor.IReadOnlyDependent;
import org.eclipse.ui.texteditor.IStatusField;
import org.eclipse.ui.texteditor.ITextEditor;
import org.eclipse.ui.texteditor.ITextEditorActionConstants;
import org.eclipse.ui.texteditor.ITextEditorDropTargetListener;
import org.eclipse.ui.texteditor.ITextEditorExtension;
import org.eclipse.ui.texteditor.ITextEditorExtension2;
import org.eclipse.ui.texteditor.ITextEditorExtension3;
import org.eclipse.ui.texteditor.ITextEditorExtension4;
import org.eclipse.ui.texteditor.ITextEditorExtension5;
import org.eclipse.ui.texteditor.IUpdate;
import org.eclipse.ui.texteditor.IncrementalFindAction;
import org.eclipse.ui.texteditor.IncrementalFindTarget;
import org.eclipse.ui.texteditor.InsertLineAction;
import org.eclipse.ui.texteditor.JoinLinesAction;
import org.eclipse.ui.texteditor.KeyBindingSupportForAssistant;
import org.eclipse.ui.texteditor.MarkAction;
import org.eclipse.ui.texteditor.MarkRegionTarget;
import org.eclipse.ui.texteditor.MoveLinesAction;
import org.eclipse.ui.texteditor.RecenterAction;
import org.eclipse.ui.texteditor.ResourceAction;
import org.eclipse.ui.texteditor.RevertToSavedAction;
import org.eclipse.ui.texteditor.ShiftAction;
import org.eclipse.ui.texteditor.ShowWhitespaceCharactersAction;
import org.eclipse.ui.texteditor.TextEditorAction;
import org.eclipse.ui.texteditor.TextNavigationAction;
import org.eclipse.ui.texteditor.TextOperationAction;
import org.eclipse.ui.texteditor.TextSelectionNavigationLocation;
import org.eclipse.ui.texteditor.TextViewerDeleteLineTarget;
import org.eclipse.ui.texteditor.rulers.IColumnSupport;
import org.eclipse.ui.texteditor.rulers.IContributedRulerColumn;
import org.eclipse.ui.texteditor.rulers.RulerColumnDescriptor;
import org.eclipse.ui.texteditor.rulers.RulerColumnPreferenceAdapter;
import org.eclipse.ui.texteditor.rulers.RulerColumnRegistry;
import org.osgi.framework.Bundle;

public abstract class AbstractTextEditor
extends EditorPart
implements ITextEditor,
IReusableEditor,
ITextEditorExtension,
ITextEditorExtension2,
ITextEditorExtension3,
ITextEditorExtension4,
ITextEditorExtension5,
INavigationLocationProvider,
ISaveablesSource,
IPersistableEditor {
    private static final String TAG_CONTRIBUTION_TYPE = "editorContribution";
    protected static final String TAG_SELECTION_OFFSET = "selectionOffset";
    protected static final String TAG_SELECTION_LENGTH = "selectionLength";
    protected static final String TAG_SELECTION_TOP_PIXEL = "selectionTopPixel";
    protected static final String TAG_SELECTION_HORIZONTAL_PIXEL = "selectionHorizontalPixel";
    private static final int WIDE_CARET_WIDTH = 2;
    private static final int SINGLE_CARET_WIDTH = 1;
    private static final String BLOCK_SELECTION_MODE_FONT = "org.eclipse.ui.workbench.texteditor.blockSelectionModeFont";
    public static final String PREFERENCE_FONT = "org.eclipse.jface.textfont";
    public static final String PREFERENCE_COLOR_FOREGROUND = "AbstractTextEditor.Color.Foreground";
    public static final String PREFERENCE_COLOR_BACKGROUND = "AbstractTextEditor.Color.Background";
    public static final String PREFERENCE_COLOR_FOREGROUND_SYSTEM_DEFAULT = "AbstractTextEditor.Color.Foreground.SystemDefault";
    public static final String PREFERENCE_COLOR_BACKGROUND_SYSTEM_DEFAULT = "AbstractTextEditor.Color.Background.SystemDefault";
    public static final String PREFERENCE_COLOR_SELECTION_FOREGROUND = "AbstractTextEditor.Color.SelectionForeground";
    public static final String PREFERENCE_COLOR_SELECTION_BACKGROUND = "AbstractTextEditor.Color.SelectionBackground";
    public static final String PREFERENCE_COLOR_SELECTION_FOREGROUND_SYSTEM_DEFAULT = "AbstractTextEditor.Color.SelectionForeground.SystemDefault";
    public static final String PREFERENCE_COLOR_SELECTION_BACKGROUND_SYSTEM_DEFAULT = "AbstractTextEditor.Color.SelectionBackground.SystemDefault";
    public static final String PREFERENCE_COLOR_FIND_SCOPE = "AbstractTextEditor.Color.FindScope";
    public static final String PREFERENCE_NAVIGATION_SMART_HOME_END = "AbstractTextEditor.Navigation.SmartHomeEnd";
    public static final String PREFERENCE_USE_CUSTOM_CARETS = "AbstractTextEditor.Accessibility.UseCustomCarets";
    public static final String PREFERENCE_WIDE_CARET = "AbstractTextEditor.Accessibility.WideCaret";
    public static final String PREFERENCE_HYPERLINKS_ENABLED = "hyperlinksEnabled";
    public static final String PREFERENCE_HYPERLINK_KEY_MODIFIER = "hyperlinkKeyModifier";
    public static final String PREFERENCE_HYPERLINK_KEY_MODIFIER_MASK = "hyperlinkKeyModifierMask";
    public static final String PREFERENCE_RULER_CONTRIBUTIONS = "rulerContributions";
    public static final String PREFERENCE_SHOW_WHITESPACE_CHARACTERS = "showWhitespaceCharacters";
    public static final String PREFERENCE_SHOW_LEADING_SPACES = "showLeadingSpaces";
    public static final String PREFERENCE_SHOW_ENCLOSED_SPACES = "showEnclosedSpaces";
    public static final String PREFERENCE_SHOW_TRAILING_SPACES = "showTrailingSpaces";
    public static final String PREFERENCE_SHOW_LEADING_IDEOGRAPHIC_SPACES = "showLeadingIdeographicSpaces";
    public static final String PREFERENCE_SHOW_ENCLOSED_IDEOGRAPHIC_SPACES = "showEnclosedIdeographicSpaces";
    public static final String PREFERENCE_SHOW_TRAILING_IDEOGRAPHIC_SPACES = "showTrailingIdeographicSpaces";
    public static final String PREFERENCE_SHOW_LEADING_TABS = "showLeadingTabs";
    public static final String PREFERENCE_SHOW_ENCLOSED_TABS = "showEnclosedTabs";
    public static final String PREFERENCE_SHOW_TRAILING_TABS = "showTrailingTabs";
    public static final String PREFERENCE_SHOW_CARRIAGE_RETURN = "showCarriageReturn";
    public static final String PREFERENCE_SHOW_LINE_FEED = "showLineFeed";
    public static final String PREFERENCE_WHITESPACE_CHARACTER_ALPHA_VALUE = "whitespaceCharacterAlphaValue";
    public static final String PREFERENCE_TEXT_DRAG_AND_DROP_ENABLED = "textDragAndDropEnabled";
    public static final String PREFERENCE_HOVER_ENRICH_MODE = "hoverReplaceMode";
    public static final String DEFAULT_EDITOR_CONTEXT_MENU_ID = "#EditorContext";
    public static final String DEFAULT_RULER_CONTEXT_MENU_ID = "#RulerContext";
    public static final String COMMON_EDITOR_CONTEXT_MENU_ID = "#AbstractTextEditorContext";
    public static final String COMMON_RULER_CONTEXT_MENU_ID = "#AbstractTextEditorRulerContext";
    protected static final int VERTICAL_RULER_WIDTH = 12;
    protected static final IdMapEntry[] ACTION_MAP = new IdMapEntry[]{new IdMapEntry("org.eclipse.ui.edit.text.goto.lineUp", 0x1000001), new IdMapEntry("org.eclipse.ui.edit.text.goto.lineDown", 0x1000002), new IdMapEntry("org.eclipse.ui.edit.text.goto.lineStart", 0x1000007), new IdMapEntry("org.eclipse.ui.edit.text.goto.lineEnd", 0x1000008), new IdMapEntry("org.eclipse.ui.edit.text.goto.columnPrevious", 0x1000003), new IdMapEntry("org.eclipse.ui.edit.text.goto.columnNext", 0x1000004), new IdMapEntry("org.eclipse.ui.edit.text.goto.pageUp", 0x1000005), new IdMapEntry("org.eclipse.ui.edit.text.goto.pageDown", 0x1000006), new IdMapEntry("org.eclipse.ui.edit.text.goto.wordPrevious", 17039363), new IdMapEntry("org.eclipse.ui.edit.text.goto.wordNext", 0x1040004), new IdMapEntry("org.eclipse.ui.edit.text.goto.textStart", 17039367), new IdMapEntry("org.eclipse.ui.edit.text.goto.textEnd", 17039368), new IdMapEntry("org.eclipse.ui.edit.text.goto.windowStart", 17039365), new IdMapEntry("org.eclipse.ui.edit.text.goto.windowEnd", 17039366), new IdMapEntry("org.eclipse.ui.edit.text.select.lineUp", 0x1020001), new IdMapEntry("org.eclipse.ui.edit.text.select.lineDown", 0x1020002), new IdMapEntry("org.eclipse.ui.edit.text.select.lineStart", 16908295), new IdMapEntry("org.eclipse.ui.edit.text.select.lineEnd", 16908296), new IdMapEntry("org.eclipse.ui.edit.text.select.columnPrevious", 16908291), new IdMapEntry("org.eclipse.ui.edit.text.select.columnNext", 16908292), new IdMapEntry("org.eclipse.ui.edit.text.select.pageUp", 16908293), new IdMapEntry("org.eclipse.ui.edit.text.select.pageDown", 16908294), new IdMapEntry("org.eclipse.ui.edit.text.select.wordPrevious", 17170435), new IdMapEntry("org.eclipse.ui.edit.text.select.wordNext", 17170436), new IdMapEntry("org.eclipse.ui.edit.text.select.textStart", 17170439), new IdMapEntry("org.eclipse.ui.edit.text.select.textEnd", 17170440), new IdMapEntry("org.eclipse.ui.edit.text.select.windowStart", 17170437), new IdMapEntry("org.eclipse.ui.edit.text.select.windowEnd", 0x1060006), new IdMapEntry("org.eclipse.ui.edit.cut", 131199), new IdMapEntry("org.eclipse.ui.edit.copy", 17039369), new IdMapEntry("org.eclipse.ui.edit.paste", 16908297), new IdMapEntry("org.eclipse.ui.edit.text.deletePrevious", 8), new IdMapEntry("org.eclipse.ui.edit.text.deleteNext", 127), new IdMapEntry("org.eclipse.ui.edit.text.deletePreviousWord", 262152), new IdMapEntry("org.eclipse.ui.edit.text.deleteNextWord", 262271), new IdMapEntry("org.eclipse.ui.edit.text.toggleOverwrite", 0x1000009)};
    private final String fReadOnlyLabel = EditorMessages.Editor_statusline_state_readonly_label;
    private final String fWritableLabel = EditorMessages.Editor_statusline_state_writable_label;
    private final String fInsertModeLabel = EditorMessages.Editor_statusline_mode_insert_label;
    private final String fOverwriteModeLabel = EditorMessages.Editor_statusline_mode_overwrite_label;
    private final String fSmartInsertModeLabel = EditorMessages.Editor_statusline_mode_smartinsert_label;
    protected final String fErrorLabel = EditorMessages.Editor_statusline_error_label;
    private final String fPositionLabelPattern = EditorMessages.Editor_statusline_position_pattern;
    private final PositionLabelValue fLineLabel = new PositionLabelValue();
    private final PositionLabelValue fColumnLabel = new PositionLabelValue();
    private final Object[] fPositionLabelPatternArguments = new Object[]{this.fLineLabel, this.fColumnLabel};
    private IColumnSupport fColumnSupport;
    private IDocumentProvider fExplicitDocumentProvider;
    private IPreferenceStore fPreferenceStore;
    private Annotation fRangeIndicator;
    private SourceViewerConfiguration fConfiguration;
    private ISourceViewer fSourceViewer;
    private SelectionProvider fSelectionProvider = new SelectionProvider();
    private SelectionListener fSelectionListener;
    private Font fFont;
    private Color fForegroundColor;
    private Color fBackgroundColor;
    private Color fSelectionForegroundColor;
    private Color fSelectionBackgroundColor;
    private Color fFindScopeHighlightColor;
    private IEditorStatusLine fEditorStatusLine;
    private IVerticalRuler fVerticalRuler;
    private String fEditorContextMenuId = null;
    private String fRulerContextMenuId = null;
    private String fHelpContextId = null;
    private boolean fShowHighlightRangeOnly;
    private Map fActions = new HashMap(10);
    private List fSelectionActions = new ArrayList(5);
    private List fContentActions = new ArrayList(5);
    private List fPropertyActions = new ArrayList(5);
    private List fStateActions = new ArrayList(5);
    private List fActivationCodes = new ArrayList(2);
    private ActivationCodeTrigger fActivationCodeTrigger = new ActivationCodeTrigger();
    private IMenuListener fMenuListener;
    private MouseListener fMouseListener;
    private ISelectionChangedListener fSelectionChangedListener;
    private Image fTitleImage;
    private Menu fTextContextMenu;
    private Menu fRulerContextMenu;
    private IElementStateListener fElementStateListener = new ElementStateListener();
    private TextInputListener fTextInputListener = new TextInputListener();
    private TextListener fTextListener = new TextListener();
    private IPropertyChangeListener fPropertyChangeListener = new PropertyChangeListener();
    private IPropertyChangeListener fFontPropertyChangeListener = new FontPropertyChangeListener();
    private ActivationListener fActivationListener;
    private Map fStatusFields;
    private ICursorListener fCursorListener;
    private ISelection fRememberedSelection;
    private boolean fCompatibilityMode = true;
    private int fErrorCorrectionOnSave;
    private IDeleteLineTarget fDeleteLineTarget;
    private IncrementalFindTarget fIncrementalFindTarget;
    private IMarkRegionTarget fMarkRegionTarget;
    private long fModificationStamp = -1L;
    private List fRulerContextMenuListeners = new ArrayList();
    private boolean fIsSanityCheckEnabled = true;
    private FindReplaceTarget fFindReplaceTarget;
    private boolean fIsStateValidationEnabled = true;
    private String[] fKeyBindingScopes;
    private boolean fIsOverwriteModeEnabled = true;
    private boolean fIsOverwriting = false;
    private ITextEditorExtension3.InsertMode fInsertMode = SMART_INSERT;
    private List fLegalInsertModes = null;
    private Caret fNonDefaultCaret;
    private Image fNonDefaultCaretImage;
    private Caret fInitialCaret;
    private IOperationApprover fNonLocalOperationApprover;
    private IOperationApprover fLinearUndoViolationApprover;
    private IMemento fMementoToRestore;
    private TextEditorSavable fSavable;
    private boolean fIsTextDragAndDropInstalled = false;
    private Object fTextDragAndDropToken;
    private FocusedInformationPresenter fInformationPresenter;
    private boolean fHasBeenActivated = false;
    private KeyBindingSupportForAssistant fKeyBindingSupportForQuickAssistant;
    private KeyBindingSupportForAssistant fKeyBindingSupportForContentAssistant;
    private ActionFactory.IWorkbenchAction fSaveAction;
    private static final boolean HACK_TO_SUPPRESS_UNUSUED_WARNING = false;
    static /* synthetic */ Class class$0;
    static /* synthetic */ Class class$1;
    static /* synthetic */ Class class$2;
    static /* synthetic */ Class class$3;
    static /* synthetic */ Class class$4;
    static /* synthetic */ Class class$5;
    static /* synthetic */ Class class$6;
    static /* synthetic */ Class class$7;
    static /* synthetic */ Class class$8;
    static /* synthetic */ Class class$9;
    static /* synthetic */ Class class$10;
    static /* synthetic */ Class class$11;
    static /* synthetic */ Class class$12;
    static /* synthetic */ Class class$13;
    static /* synthetic */ Class class$14;
    static /* synthetic */ Class class$15;

    protected AbstractTextEditor() {
    }

    public IDocumentProvider getDocumentProvider() {
        return this.fExplicitDocumentProvider;
    }

    protected final Annotation getRangeIndicator() {
        return this.fRangeIndicator;
    }

    protected final SourceViewerConfiguration getSourceViewerConfiguration() {
        return this.fConfiguration;
    }

    protected final ISourceViewer getSourceViewer() {
        return this.fSourceViewer;
    }

    protected final IVerticalRuler getVerticalRuler() {
        return this.fVerticalRuler;
    }

    protected final String getEditorContextMenuId() {
        return this.fEditorContextMenuId;
    }

    protected final String getRulerContextMenuId() {
        return this.fRulerContextMenuId;
    }

    protected final String getHelpContextId() {
        return this.fHelpContextId;
    }

    protected final IPreferenceStore getPreferenceStore() {
        return this.fPreferenceStore;
    }

    protected void setDocumentProvider(IDocumentProvider provider) {
        this.fExplicitDocumentProvider = provider;
    }

    protected void setSourceViewerConfiguration(SourceViewerConfiguration configuration) {
        Assert.isNotNull((Object)configuration);
        this.fConfiguration = configuration;
    }

    protected void setRangeIndicator(Annotation rangeIndicator) {
        Assert.isNotNull((Object)rangeIndicator);
        this.fRangeIndicator = rangeIndicator;
    }

    protected void setEditorContextMenuId(String contextMenuId) {
        Assert.isNotNull((Object)contextMenuId);
        this.fEditorContextMenuId = contextMenuId;
    }

    protected void setRulerContextMenuId(String contextMenuId) {
        Assert.isNotNull((Object)contextMenuId);
        this.fRulerContextMenuId = contextMenuId;
    }

    protected final void setCompatibilityMode(boolean compatible) {
        this.fCompatibilityMode = compatible;
    }

    protected void setHelpContextId(String helpContextId) {
        Assert.isNotNull((Object)helpContextId);
        this.fHelpContextId = helpContextId;
    }

    protected void setKeyBindingScopes(String[] scopes) {
        Assert.isTrue((scopes != null && scopes.length > 0 ? 1 : 0) != 0);
        this.fKeyBindingScopes = scopes;
    }

    protected void setPreferenceStore(IPreferenceStore store) {
        if (this.fPreferenceStore != null) {
            this.fPreferenceStore.removePropertyChangeListener(this.fPropertyChangeListener);
            this.fPreferenceStore.removePropertyChangeListener(this.fFontPropertyChangeListener);
        }
        this.fPreferenceStore = store;
        if (this.fPreferenceStore != null) {
            this.fPreferenceStore.addPropertyChangeListener(this.fPropertyChangeListener);
            this.fPreferenceStore.addPropertyChangeListener(this.fFontPropertyChangeListener);
        }
    }

    public boolean isEditable() {
        IDocumentProvider provider = this.getDocumentProvider();
        if (provider instanceof IDocumentProviderExtension) {
            IDocumentProviderExtension extension = (IDocumentProviderExtension)((Object)provider);
            return extension.isModifiable(this.getEditorInput());
        }
        return false;
    }

    public ISelectionProvider getSelectionProvider() {
        return this.fSelectionProvider;
    }

    protected void rememberSelection() {
        this.fRememberedSelection = this.doGetSelection();
    }

    protected ISelection doGetSelection() {
        ISelectionProvider sp = null;
        if (this.fSourceViewer != null) {
            sp = this.fSourceViewer.getSelectionProvider();
        }
        return sp == null ? null : sp.getSelection();
    }

    protected void restoreSelection() {
        ITextSelection textSelection;
        if (this.fRememberedSelection instanceof ITextSelection && this.isValidSelection((textSelection = (ITextSelection)this.fRememberedSelection).getOffset(), textSelection.getLength())) {
            this.doSetSelection(this.fRememberedSelection);
        }
        this.fRememberedSelection = null;
    }

    private boolean isValidSelection(int offset, int length) {
        IDocument document;
        IDocumentProvider provider = this.getDocumentProvider();
        if (provider != null && (document = provider.getDocument(this.getEditorInput())) != null) {
            int end = offset + length;
            int documentLength = document.getLength();
            return offset >= 0 && offset <= documentLength && end >= 0 && end <= documentLength && length >= 0;
        }
        return false;
    }

    protected void doSetSelection(ISelection selection) {
        if (selection instanceof ITextSelection) {
            ITextSelection textSelection = (ITextSelection)selection;
            this.selectAndReveal(textSelection.getOffset(), textSelection.getLength());
        }
    }

    protected IMenuListener createContextMenuListener() {
        return new IMenuListener(){

            public void menuAboutToShow(IMenuManager menu) {
                String id = menu.getId();
                if (AbstractTextEditor.this.getRulerContextMenuId().equals(id)) {
                    AbstractTextEditor.this.setFocus();
                    AbstractTextEditor.this.rulerContextMenuAboutToShow(menu);
                } else if (AbstractTextEditor.this.getEditorContextMenuId().equals(id)) {
                    AbstractTextEditor.this.setFocus();
                    AbstractTextEditor.this.editorContextMenuAboutToShow(menu);
                }
            }
        };
    }

    protected final IMenuListener getContextMenuListener() {
        if (this.fMenuListener == null) {
            this.fMenuListener = this.createContextMenuListener();
        }
        return this.fMenuListener;
    }

    protected final MouseListener getRulerMouseListener() {
        if (this.fMouseListener == null) {
            this.fMouseListener = new MouseListener(){
                private boolean fDoubleClicked = false;
                private final int fDoubleClickTime;
                private long fMouseUpDelta;
                {
                    this.fDoubleClickTime = AbstractTextEditor.this.getSite().getShell().getDisplay().getDoubleClickTime();
                    this.fMouseUpDelta = 0L;
                }

                private void triggerAction(String actionID) {
                    IAction action = AbstractTextEditor.this.getAction(actionID);
                    if (action != null) {
                        if (action instanceof IUpdate) {
                            ((IUpdate)action).update();
                        }
                        if (action.isEnabled()) {
                            action.run();
                        }
                    }
                }

                public void mouseUp(MouseEvent e) {
                    int delay;
                    AbstractTextEditor.this.setFocus();
                    int n = delay = this.fMouseUpDelta == 0L ? 0 : this.fDoubleClickTime - (int)(System.currentTimeMillis() - this.fMouseUpDelta);
                    if (1 != e.button) {
                        return;
                    }
                    Runnable runnable = new Runnable(this){
                        final /* synthetic */ 14 this$1;
                        {
                            this.this$1 = var1_1;
                        }

                        public void run() {
                            if (!14.access$0(this.this$1)) {
                                14.access$1(this.this$1, "RulerClick");
                            }
                        }
                    };
                    if (delay <= 0) {
                        runnable.run();
                    } else {
                        e.widget.getDisplay().timerExec(delay, runnable);
                    }
                }

                public void mouseDoubleClick(MouseEvent e) {
                    if (1 == e.button) {
                        this.fDoubleClicked = true;
                        this.triggerAction("RulerDoubleClick");
                    }
                }

                public void mouseDown(MouseEvent e) {
                    this.fMouseUpDelta = System.currentTimeMillis();
                    this.fDoubleClicked = false;
                    if (AbstractTextEditor.this.fRulerContextMenu != null && !AbstractTextEditor.this.fRulerContextMenu.isDisposed()) {
                        Display display = AbstractTextEditor.this.fRulerContextMenu.getDisplay();
                        Point location = display.getCursorLocation();
                        AbstractTextEditor.this.fRulerContextMenu.setLocation(location.x, location.y);
                    }
                }

                static /* synthetic */ boolean access$0(14 var0) {
                    return var0.fDoubleClicked;
                }

                static /* synthetic */ void access$1(14 var0, String string) {
                    var0.triggerAction(string);
                }
            };
        }
        return this.fMouseListener;
    }

    protected final ISelectionChangedListener getSelectionChangedListener() {
        if (this.fSelectionChangedListener == null) {
            this.fSelectionChangedListener = new ISelectionChangedListener(){
                private Runnable fRunnable = new Runnable(this){
                    final /* synthetic */ 16 this$1;
                    {
                        this.this$1 = var1_1;
                    }

                    public void run() {
                        if (AbstractTextEditor.access$0(16.access$0(this.this$1)) != null && AbstractTextEditor.access$0(16.access$0(this.this$1)).getDocument() != null) {
                            16.access$0(this.this$1).updateSelectionDependentActions();
                        }
                    }
                };
                private Display fDisplay;

                public void selectionChanged(SelectionChangedEvent event) {
                    if (this.fDisplay == null) {
                        this.fDisplay = AbstractTextEditor.this.getSite().getShell().getDisplay();
                    }
                    this.fDisplay.asyncExec(this.fRunnable);
                    AbstractTextEditor.this.handleCursorPositionChanged();
                }

                static /* synthetic */ AbstractTextEditor access$0(16 var0) {
                    return var0.AbstractTextEditor.this;
                }
            };
        }
        return this.fSelectionChangedListener;
    }

    protected final ICursorListener getCursorListener() {
        if (this.fCursorListener == null) {
            this.fCursorListener = new ICursorListener(){

                public void keyPressed(KeyEvent e) {
                    AbstractTextEditor.this.handleCursorPositionChanged();
                }

                public void keyReleased(KeyEvent e) {
                }

                public void mouseDoubleClick(MouseEvent e) {
                }

                public void mouseDown(MouseEvent e) {
                }

                public void mouseUp(MouseEvent e) {
                    AbstractTextEditor.this.handleCursorPositionChanged();
                }
            };
        }
        return this.fCursorListener;
    }

    protected final void internalInit(IWorkbenchWindow window, IEditorSite site, final IEditorInput input) throws PartInitException {
        IRunnableWithProgress runnable = new IRunnableWithProgress(){

            public void run(IProgressMonitor monitor) throws InvocationTargetException, InterruptedException {
                try {
                    try {
                        if (AbstractTextEditor.this.getDocumentProvider() instanceof IDocumentProviderExtension2) {
                            IDocumentProviderExtension2 extension = (IDocumentProviderExtension2)((Object)AbstractTextEditor.this.getDocumentProvider());
                            extension.setProgressMonitor(monitor);
                        }
                        AbstractTextEditor.this.doSetInput(input);
                    }
                    catch (CoreException x) {
                        throw new InvocationTargetException(x);
                    }
                }
                finally {
                    if (AbstractTextEditor.this.getDocumentProvider() instanceof IDocumentProviderExtension2) {
                        IDocumentProviderExtension2 extension = (IDocumentProviderExtension2)((Object)AbstractTextEditor.this.getDocumentProvider());
                        extension.setProgressMonitor(null);
                    }
                }
            }
        };
        try {
            this.getSite().getWorkbenchWindow().run(false, true, runnable);
        }
        catch (InterruptedException interruptedException) {
        }
        catch (InvocationTargetException x) {
            Throwable t = x.getTargetException();
            if (t instanceof CoreException) {
                CoreException e = (CoreException)t;
                IStatus status = e.getStatus();
                if (status.getException() != null) {
                    throw new PartInitException(status);
                }
                throw new PartInitException((IStatus)new Status(status.getSeverity(), status.getPlugin(), status.getCode(), status.getMessage(), t));
            }
            throw new PartInitException((IStatus)new Status(4, "org.eclipse.ui.workbench.texteditor", 0, EditorMessages.Editor_error_init, t));
        }
    }

    public void init(IEditorSite site, IEditorInput input) throws PartInitException {
        this.setSite((IWorkbenchPartSite)site);
        this.internalInit(site.getWorkbenchWindow(), site, input);
        this.fActivationListener = new ActivationListener(site.getWorkbenchWindow().getPartService());
    }

    protected IVerticalRuler createVerticalRuler() {
        return new VerticalRuler(12);
    }

    protected void updateContributedRulerColumns(CompositeRuler ruler) {
        IColumnSupport support;
        Class<?> clazz = class$3;
        if (clazz == null) {
            try {
                clazz = class$3 = Class.forName("org.eclipse.ui.texteditor.rulers.IColumnSupport");
            }
            catch (ClassNotFoundException classNotFoundException) {
                throw new NoClassDefFoundError(classNotFoundException.getMessage());
            }
        }
        if ((support = (IColumnSupport)this.getAdapter(clazz)) == null) {
            return;
        }
        RulerColumnPreferenceAdapter adapter = null;
        if (this.fPreferenceStore != null) {
            adapter = new RulerColumnPreferenceAdapter(this.getPreferenceStore(), PREFERENCE_RULER_CONTRIBUTIONS);
        }
        RulerColumnRegistry registry = RulerColumnRegistry.getDefault();
        List descriptors = registry.getColumnDescriptors();
        Iterator it = descriptors.iterator();
        while (it.hasNext()) {
            RulerColumnDescriptor descriptor = (RulerColumnDescriptor)it.next();
            support.setColumnVisible(descriptor, adapter == null || adapter.isEnabled(descriptor));
        }
    }

    protected IColumnSupport createColumnSupport() {
        return null;
    }

    protected ISourceViewer createSourceViewer(Composite parent, IVerticalRuler ruler, int styles) {
        return new SourceViewer(parent, ruler, styles);
    }

    protected void initializeDragAndDrop(ISourceViewer viewer) {
        IPreferenceStore store;
        Object object;
        ITextEditorDropTargetListener listener;
        IDragAndDropService dndService;
        IWorkbenchPartSite iWorkbenchPartSite = this.getSite();
        Class<?> clazz = class$4;
        if (clazz == null) {
            try {
                clazz = class$4 = Class.forName("org.eclipse.ui.dnd.IDragAndDropService");
            }
            catch (ClassNotFoundException classNotFoundException) {
                throw new NoClassDefFoundError(classNotFoundException.getMessage());
            }
        }
        if ((dndService = (IDragAndDropService)iWorkbenchPartSite.getService((Class)clazz)) == null) {
            return;
        }
        Class<?> clazz2 = class$5;
        if (clazz2 == null) {
            try {
                clazz2 = class$5 = Class.forName("org.eclipse.ui.texteditor.ITextEditorDropTargetListener");
            }
            catch (ClassNotFoundException classNotFoundException) {
                throw new NoClassDefFoundError(classNotFoundException.getMessage());
            }
        }
        if ((listener = (ITextEditorDropTargetListener)this.getAdapter(clazz2)) == null && (object = Platform.getAdapterManager().loadAdapter((Object)this, "org.eclipse.ui.texteditor.ITextEditorDropTargetListener")) instanceof ITextEditorDropTargetListener) {
            listener = (ITextEditorDropTargetListener)object;
        }
        if (listener != null) {
            dndService.addMergedDropTarget((Control)viewer.getTextWidget(), 3, listener.getTransfers(), (DropTargetListener)listener);
        }
        if ((store = this.getPreferenceStore()) != null && store.getBoolean(PREFERENCE_TEXT_DRAG_AND_DROP_ENABLED)) {
            this.installTextDragAndDrop(viewer);
        }
    }

    public void createPartControl(Composite parent) {
        String partId;
        String partId2;
        IQuickAssistAssistant assistant;
        this.fVerticalRuler = this.createVerticalRuler();
        int styles = 68354;
        this.fSourceViewer = this.createSourceViewer(parent, this.fVerticalRuler, styles);
        if (this.fConfiguration == null) {
            this.fConfiguration = new SourceViewerConfiguration();
        }
        this.fSourceViewer.configure(this.fConfiguration);
        if (this.fSourceViewer instanceof ISourceViewerExtension4) {
            this.fKeyBindingSupportForContentAssistant = new KeyBindingSupportForAssistant((ISourceViewerExtension4)this.fSourceViewer);
        }
        if (this.fSourceViewer instanceof ISourceViewerExtension3 && (assistant = ((ISourceViewerExtension3)this.fSourceViewer).getQuickAssistAssistant()) != null) {
            this.fKeyBindingSupportForQuickAssistant = new KeyBindingSupportForAssistant(assistant);
        }
        if (this.fRangeIndicator != null) {
            this.fSourceViewer.setRangeIndicator(this.fRangeIndicator);
        }
        this.fSourceViewer.addTextListener((ITextListener)this.fTextListener);
        this.fSourceViewer.addTextInputListener((ITextInputListener)this.fTextListener);
        this.getSelectionProvider().addSelectionChangedListener(this.getSelectionChangedListener());
        this.initializeViewerFont(this.fSourceViewer);
        this.initializeViewerColors(this.fSourceViewer);
        this.initializeFindScopeColor(this.fSourceViewer);
        this.initializeDragAndDrop(this.fSourceViewer);
        StyledText styledText = this.fSourceViewer.getTextWidget();
        styledText.addMouseListener((MouseListener)this.getCursorListener());
        styledText.addKeyListener((KeyListener)this.getCursorListener());
        styledText.addListener(44, new Listener(){

            public void handleEvent(Event event) {
                event.doit = false;
            }
        });
        if (this.getHelpContextId() != null) {
            PlatformUI.getWorkbench().getHelpSystem().setHelp((Control)styledText, this.getHelpContextId());
        }
        String id = this.fEditorContextMenuId != null ? this.fEditorContextMenuId : DEFAULT_EDITOR_CONTEXT_MENU_ID;
        MenuManager manager = new MenuManager(id, id);
        manager.setRemoveAllWhenShown(true);
        manager.addMenuListener(this.getContextMenuListener());
        this.fTextContextMenu = manager.createContextMenu((Control)styledText);
        styledText.setMenu(this.fTextContextMenu);
        if (this.fEditorContextMenuId != null) {
            this.getEditorSite().registerContextMenu(this.fEditorContextMenuId, manager, this.getSelectionProvider(), this.isEditorInputIncludedInContextMenu());
        } else if (this.fCompatibilityMode) {
            this.getEditorSite().registerContextMenu(DEFAULT_EDITOR_CONTEXT_MENU_ID, manager, this.getSelectionProvider(), this.isEditorInputIncludedInContextMenu());
        }
        if ((this.fEditorContextMenuId != null && this.fCompatibilityMode || this.fEditorContextMenuId == null) && (partId2 = this.getEditorSite().getId()) != null) {
            this.getEditorSite().registerContextMenu(String.valueOf(partId2) + ".EditorContext", manager, this.getSelectionProvider(), this.isEditorInputIncludedInContextMenu());
        }
        this.getEditorSite().registerContextMenu(COMMON_EDITOR_CONTEXT_MENU_ID, manager, this.getSelectionProvider(), false);
        if (this.fEditorContextMenuId == null) {
            this.fEditorContextMenuId = DEFAULT_EDITOR_CONTEXT_MENU_ID;
        }
        id = this.fRulerContextMenuId != null ? this.fRulerContextMenuId : DEFAULT_RULER_CONTEXT_MENU_ID;
        manager = new MenuManager(id, id);
        manager.setRemoveAllWhenShown(true);
        manager.addMenuListener(this.getContextMenuListener());
        Control rulerControl = this.fVerticalRuler.getControl();
        this.fRulerContextMenu = manager.createContextMenu(rulerControl);
        rulerControl.setMenu(this.fRulerContextMenu);
        rulerControl.addMouseListener(this.getRulerMouseListener());
        if (this.fRulerContextMenuId != null) {
            this.getEditorSite().registerContextMenu(this.fRulerContextMenuId, manager, this.getSelectionProvider(), false);
        } else if (this.fCompatibilityMode) {
            this.getEditorSite().registerContextMenu(DEFAULT_RULER_CONTEXT_MENU_ID, manager, this.getSelectionProvider(), false);
        }
        if ((this.fRulerContextMenuId != null && this.fCompatibilityMode || this.fRulerContextMenuId == null) && (partId = this.getSite().getId()) != null) {
            this.getEditorSite().registerContextMenu(String.valueOf(partId) + ".RulerContext", manager, this.getSelectionProvider(), false);
        }
        this.getEditorSite().registerContextMenu(COMMON_RULER_CONTEXT_MENU_ID, manager, this.getSelectionProvider(), false);
        if (this.fRulerContextMenuId == null) {
            this.fRulerContextMenuId = DEFAULT_RULER_CONTEXT_MENU_ID;
        }
        this.getSite().setSelectionProvider(this.getSelectionProvider());
        this.fSelectionListener = new SelectionListener();
        this.fSelectionListener.install(this.getSelectionProvider());
        this.fSelectionListener.setDocument(this.getDocumentProvider().getDocument(this.getEditorInput()));
        this.initializeActivationCodeTrigger();
        this.createNavigationActions();
        this.createAccessibilityActions();
        this.createActions();
        this.initializeSourceViewer(this.getEditorInput());
        this.createUndoRedoActions();
        JFaceResources.getFontRegistry().addListener(this.fFontPropertyChangeListener);
        IVerticalRuler ruler = this.getVerticalRuler();
        if (ruler instanceof CompositeRuler) {
            this.updateContributedRulerColumns((CompositeRuler)ruler);
        }
    }

    protected void installTextDragAndDrop(final ISourceViewer viewer) {
        IDragAndDropService dndService;
        if (viewer == null || this.fIsTextDragAndDropInstalled) {
            return;
        }
        IWorkbenchPartSite iWorkbenchPartSite = this.getSite();
        Class<?> clazz = class$4;
        if (clazz == null) {
            try {
                clazz = class$4 = Class.forName("org.eclipse.ui.dnd.IDragAndDropService");
            }
            catch (ClassNotFoundException classNotFoundException) {
                throw new NoClassDefFoundError(classNotFoundException.getMessage());
            }
        }
        if ((dndService = (IDragAndDropService)iWorkbenchPartSite.getService((Class)clazz)) == null) {
            return;
        }
        final StyledText st = viewer.getTextWidget();
        final ISelectionProvider selectionProvider = viewer.getSelectionProvider();
        DragSource source = new DragSource((Control)st, 3);
        source.setTransfer(new Transfer[]{TextTransfer.getInstance()});
        source.addDragListener((DragSourceListener)new DragSourceAdapter(){
            String fSelectedText;
            Point fSelection;

            public void dragStart(DragSourceEvent event) {
                AbstractTextEditor.this.fTextDragAndDropToken = null;
                try {
                    this.fSelection = st.getSelection();
                    event.doit = this.isLocationSelected(new Point(event.x, event.y));
                    ISelection selection = selectionProvider.getSelection();
                    this.fSelectedText = selection instanceof ITextSelection ? ((ITextSelection)selection).getText() : st.getSelectionText();
                }
                catch (IllegalArgumentException illegalArgumentException) {
                    event.doit = false;
                }
            }

            private boolean isLocationSelected(Point point) {
                if (AbstractTextEditor.this.isBlockSelectionModeEnabled()) {
                    return false;
                }
                int offset = st.getOffsetAtLocation(point);
                Point p = st.getLocationAtOffset(offset);
                if (p.x > point.x) {
                    --offset;
                }
                return offset >= this.fSelection.x && offset < this.fSelection.y;
            }

            public void dragSetData(DragSourceEvent event) {
                event.data = this.fSelectedText;
                AbstractTextEditor.this.fTextDragAndDropToken = (Object)this;
            }

            public void dragFinished(DragSourceEvent event) {
                block8: {
                    try {
                        IRewriteTarget target;
                        if (event.detail != 2 || !AbstractTextEditor.this.validateEditorInputState()) break block8;
                        Point newSelection = st.getSelection();
                        int length = this.fSelection.y - this.fSelection.x;
                        int delta = 0;
                        if (newSelection.x < this.fSelection.x) {
                            delta = length;
                        }
                        st.replaceTextRange(this.fSelection.x + delta, length, "");
                        if (AbstractTextEditor.this.fTextDragAndDropToken != null) break block8;
                        Class<?> clazz = class$6;
                        if (clazz == null) {
                            try {
                                clazz = class$6 = Class.forName("org.eclipse.jface.text.IRewriteTarget");
                            }
                            catch (ClassNotFoundException classNotFoundException) {
                                throw new NoClassDefFoundError(classNotFoundException.getMessage());
                            }
                        }
                        if ((target = (IRewriteTarget)AbstractTextEditor.this.getAdapter(clazz)) != null) {
                            target.endCompoundChange();
                        }
                    }
                    finally {
                        AbstractTextEditor.this.fTextDragAndDropToken = null;
                    }
                }
            }
        });
        DropTargetAdapter dropTargetListener = new DropTargetAdapter(){
            private Point fSelection;

            public void dragEnter(DropTargetEvent event) {
                AbstractTextEditor.this.fTextDragAndDropToken = null;
                this.fSelection = st.getSelection();
                if (event.detail == 16) {
                    event.detail = (event.operations & 2) != 0 ? 2 : ((event.operations & 1) != 0 ? 1 : 0);
                }
            }

            public void dragOperationChanged(DropTargetEvent event) {
                if (event.detail == 16) {
                    event.detail = (event.operations & 2) != 0 ? 2 : ((event.operations & 1) != 0 ? 1 : 0);
                }
            }

            public void dragOver(DropTargetEvent event) {
                event.feedback |= 8;
            }

            public void drop(DropTargetEvent event) {
                block16: {
                    try {
                        if (AbstractTextEditor.this.fTextDragAndDropToken != null && event.detail == 2) {
                            IRewriteTarget target;
                            int caretOffset = st.getCaretOffset();
                            if (this.fSelection.x <= caretOffset && caretOffset <= this.fSelection.y) {
                                event.detail = 0;
                                return;
                            }
                            Class<?> clazz = class$6;
                            if (clazz == null) {
                                try {
                                    clazz = class$6 = Class.forName("org.eclipse.jface.text.IRewriteTarget");
                                }
                                catch (ClassNotFoundException classNotFoundException) {
                                    throw new NoClassDefFoundError(classNotFoundException.getMessage());
                                }
                            }
                            if ((target = (IRewriteTarget)AbstractTextEditor.this.getAdapter(clazz)) != null) {
                                target.beginCompoundChange();
                            }
                        }
                        if (!AbstractTextEditor.this.validateEditorInputState()) {
                            event.detail = 0;
                            return;
                        }
                        String text = (String)event.data;
                        if (AbstractTextEditor.this.isBlockSelectionModeEnabled()) break block16;
                        Point newSelection = st.getSelection();
                        try {
                            int modelOffset = AbstractTextEditor.widgetOffset2ModelOffset(viewer, newSelection.x);
                            viewer.getDocument().replace(modelOffset, 0, text);
                        }
                        catch (BadLocationException badLocationException) {
                            AbstractTextEditor.this.fTextDragAndDropToken = null;
                            return;
                        }
                        st.setSelectionRange(newSelection.x, text.length());
                    }
                    finally {
                        AbstractTextEditor.this.fTextDragAndDropToken = null;
                    }
                }
            }
        };
        dndService.addMergedDropTarget((Control)st, 3, new Transfer[]{TextTransfer.getInstance()}, (DropTargetListener)dropTargetListener);
        this.fIsTextDragAndDropInstalled = true;
    }

    protected void uninstallTextDragAndDrop(ISourceViewer viewer) {
        IDragAndDropService dndService;
        if (viewer == null || !this.fIsTextDragAndDropInstalled) {
            return;
        }
        IWorkbenchPartSite iWorkbenchPartSite = this.getSite();
        Class<?> clazz = class$4;
        if (clazz == null) {
            try {
                clazz = class$4 = Class.forName("org.eclipse.ui.dnd.IDragAndDropService");
            }
            catch (ClassNotFoundException classNotFoundException) {
                throw new NoClassDefFoundError(classNotFoundException.getMessage());
            }
        }
        if ((dndService = (IDragAndDropService)iWorkbenchPartSite.getService((Class)clazz)) == null) {
            return;
        }
        StyledText st = viewer.getTextWidget();
        dndService.removeMergedDropTarget((Control)st);
        DragSource dragSource = (DragSource)st.getData("DragSource");
        if (dragSource != null) {
            dragSource.dispose();
            st.setData("DragSource", null);
        }
        this.fIsTextDragAndDropInstalled = false;
    }

    protected boolean isEditorInputIncludedInContextMenu() {
        return true;
    }

    private void initializeActivationCodeTrigger() {
        this.fActivationCodeTrigger.install();
        this.fActivationCodeTrigger.setScopes(this.fKeyBindingScopes);
    }

    private void initializeViewerFont(ISourceViewer viewer) {
        FontData data;
        boolean isSharedFont = true;
        Font font = null;
        String symbolicFontName = this.getSymbolicFontName();
        if (symbolicFontName != null) {
            font = JFaceResources.getFont((String)symbolicFontName);
        } else if (this.fPreferenceStore != null && this.fPreferenceStore.contains(PREFERENCE_FONT) && !this.fPreferenceStore.isDefault(PREFERENCE_FONT) && (data = PreferenceConverter.getFontData((IPreferenceStore)this.fPreferenceStore, (String)PREFERENCE_FONT)) != null) {
            isSharedFont = false;
            font = new Font((Device)viewer.getTextWidget().getDisplay(), data);
        }
        if (font == null) {
            font = JFaceResources.getTextFont();
        }
        if (!font.equals((Object)this.fSourceViewer.getTextWidget().getFont())) {
            this.setFont(viewer, font);
            this.disposeFont();
            if (!isSharedFont) {
                this.fFont = font;
            }
        } else if (!isSharedFont) {
            font.dispose();
        }
    }

    private void disposeFont() {
        if (this.fFont != null) {
            this.fFont.dispose();
            this.fFont = null;
        }
    }

    private void setFont(ISourceViewer sourceViewer, Font font) {
        if (sourceViewer.getDocument() != null) {
            StyledText styledText;
            ISelectionProvider provider = sourceViewer.getSelectionProvider();
            ISelection selection = provider.getSelection();
            int topIndex = sourceViewer.getTopIndex();
            StyledText parent = styledText = sourceViewer.getTextWidget();
            if (sourceViewer instanceof ITextViewerExtension) {
                ITextViewerExtension extension = (ITextViewerExtension)sourceViewer;
                parent = extension.getControl();
            }
            parent.setRedraw(false);
            styledText.setFont(font);
            if (this.fVerticalRuler instanceof IVerticalRulerExtension) {
                IVerticalRulerExtension e = (IVerticalRulerExtension)this.fVerticalRuler;
                e.setFont(font);
            }
            provider.setSelection(selection);
            sourceViewer.setTopIndex(topIndex);
            if (parent instanceof Composite) {
                Composite composite = (Composite)parent;
                composite.layout(true);
            }
            parent.setRedraw(true);
        } else {
            StyledText styledText = sourceViewer.getTextWidget();
            styledText.setFont(font);
            if (this.fVerticalRuler instanceof IVerticalRulerExtension) {
                IVerticalRulerExtension e = (IVerticalRulerExtension)this.fVerticalRuler;
                e.setFont(font);
            }
        }
    }

    private Color createColor(IPreferenceStore store, String key, Display display) {
        RGB rgb = null;
        if (store.contains(key) && (rgb = store.isDefault(key) ? PreferenceConverter.getDefaultColor((IPreferenceStore)store, (String)key) : PreferenceConverter.getColor((IPreferenceStore)store, (String)key)) != null) {
            return new Color((Device)display, rgb);
        }
        return null;
    }

    protected void initializeViewerColors(ISourceViewer viewer) {
        IPreferenceStore store = this.getPreferenceStore();
        if (store != null) {
            StyledText styledText = viewer.getTextWidget();
            Color color = store.getBoolean(PREFERENCE_COLOR_FOREGROUND_SYSTEM_DEFAULT) ? null : this.createColor(store, PREFERENCE_COLOR_FOREGROUND, styledText.getDisplay());
            styledText.setForeground(color);
            if (this.fForegroundColor != null) {
                this.fForegroundColor.dispose();
            }
            this.fForegroundColor = color;
            color = store.getBoolean(PREFERENCE_COLOR_BACKGROUND_SYSTEM_DEFAULT) ? null : this.createColor(store, PREFERENCE_COLOR_BACKGROUND, styledText.getDisplay());
            styledText.setBackground(color);
            if (this.fBackgroundColor != null) {
                this.fBackgroundColor.dispose();
            }
            this.fBackgroundColor = color;
            color = store.getBoolean(PREFERENCE_COLOR_SELECTION_FOREGROUND_SYSTEM_DEFAULT) ? null : this.createColor(store, PREFERENCE_COLOR_SELECTION_FOREGROUND, styledText.getDisplay());
            styledText.setSelectionForeground(color);
            if (this.fSelectionForegroundColor != null) {
                this.fSelectionForegroundColor.dispose();
            }
            this.fSelectionForegroundColor = color;
            color = store.getBoolean(PREFERENCE_COLOR_SELECTION_BACKGROUND_SYSTEM_DEFAULT) ? null : this.createColor(store, PREFERENCE_COLOR_SELECTION_BACKGROUND, styledText.getDisplay());
            styledText.setSelectionBackground(color);
            if (this.fSelectionBackgroundColor != null) {
                this.fSelectionBackgroundColor.dispose();
            }
            this.fSelectionBackgroundColor = color;
        }
    }

    private void initializeFindScopeColor(ISourceViewer viewer) {
        IPreferenceStore store = this.getPreferenceStore();
        if (store != null) {
            StyledText styledText = viewer.getTextWidget();
            Color color = this.createColor(store, PREFERENCE_COLOR_FIND_SCOPE, styledText.getDisplay());
            IFindReplaceTarget target = viewer.getFindReplaceTarget();
            if (target != null && target instanceof IFindReplaceTargetExtension) {
                ((IFindReplaceTargetExtension)target).setScopeHighlightColor(color);
            }
            if (this.fFindScopeHighlightColor != null) {
                this.fFindScopeHighlightColor.dispose();
            }
            this.fFindScopeHighlightColor = color;
        }
    }

    private void initializeSourceViewer(IEditorInput input) {
        IDocumentProvider documentProvider = this.getDocumentProvider();
        IAnnotationModel model = documentProvider.getAnnotationModel(input);
        IDocument document = documentProvider.getDocument(input);
        if (document != null) {
            this.fSourceViewer.setDocument(document, model);
            this.fSourceViewer.setEditable(this.isEditable());
            this.fSourceViewer.showAnnotations(model != null);
        }
        if (this.fElementStateListener instanceof IElementStateListenerExtension) {
            boolean isStateValidated = false;
            if (documentProvider instanceof IDocumentProviderExtension) {
                isStateValidated = ((IDocumentProviderExtension)((Object)documentProvider)).isStateValidated(input);
            }
            IElementStateListenerExtension extension = (IElementStateListenerExtension)((Object)this.fElementStateListener);
            extension.elementStateValidationChanged(input, isStateValidated);
        }
        if (this.fInitialCaret == null) {
            this.fInitialCaret = this.fSourceViewer.getTextWidget().getCaret();
        }
        if (this.fIsOverwriting) {
            this.fSourceViewer.getTextWidget().invokeAction(0x1000009);
        }
        this.handleInsertModeChanged();
        if (this.isTabsToSpacesConversionEnabled()) {
            this.installTabsToSpacesConverter();
        }
        if (this.fSourceViewer instanceof ITextViewerExtension8) {
            IPreferenceStore store = this.getPreferenceStore();
            ITextViewerExtension8.EnrichMode mode = store != null ? this.convertEnrichModePreference(store.getInt(PREFERENCE_HOVER_ENRICH_MODE)) : ITextViewerExtension8.EnrichMode.AFTER_DELAY;
            ((ITextViewerExtension8)this.fSourceViewer).setHoverEnrichMode(mode);
        }
    }

    private ITextViewerExtension8.EnrichMode convertEnrichModePreference(int mode) {
        switch (mode) {
            case -1: {
                return null;
            }
            case 0: {
                return ITextViewerExtension8.EnrichMode.AFTER_DELAY;
            }
            case 1: {
                return ITextViewerExtension8.EnrichMode.IMMEDIATELY;
            }
            case 2: {
                return ITextViewerExtension8.EnrichMode.ON_CLICK;
            }
        }
        Assert.isLegal((boolean)false);
        return null;
    }

    private void initializeTitle(IEditorInput input) {
        Image oldImage = this.fTitleImage;
        this.fTitleImage = null;
        String title = "";
        if (input != null) {
            IEditorRegistry editorRegistry = PlatformUI.getWorkbench().getEditorRegistry();
            IEditorDescriptor editorDesc = editorRegistry.findEditor(this.getSite().getId());
            ImageDescriptor imageDesc = editorDesc != null ? editorDesc.getImageDescriptor() : null;
            this.fTitleImage = imageDesc != null ? imageDesc.createImage() : null;
            title = input.getName();
        }
        this.setTitleImage(this.fTitleImage);
        this.setPartName(title);
        this.firePropertyChange(257);
        if (oldImage != null && !oldImage.isDisposed()) {
            oldImage.dispose();
        }
    }

    protected void setDocumentProvider(IEditorInput input) {
    }

    private void updateDocumentProvider(IEditorInput input) {
        IDocumentProviderExtension2 extension;
        IProgressMonitor rememberedProgressMonitor = null;
        IDocumentProvider provider = this.getDocumentProvider();
        if (provider != null) {
            provider.removeElementStateListener(this.fElementStateListener);
            if (provider instanceof IDocumentProviderExtension2) {
                extension = (IDocumentProviderExtension2)((Object)provider);
                rememberedProgressMonitor = extension.getProgressMonitor();
                extension.setProgressMonitor(null);
            }
        }
        this.setDocumentProvider(input);
        provider = this.getDocumentProvider();
        if (provider != null) {
            provider.addElementStateListener(this.fElementStateListener);
            if (provider instanceof IDocumentProviderExtension2) {
                extension = (IDocumentProviderExtension2)((Object)provider);
                extension.setProgressMonitor(rememberedProgressMonitor);
            }
        }
    }

    protected void doSetInput(IEditorInput input) throws CoreException {
        ISaveablesLifecycleListener listener;
        IWorkbenchPartSite iWorkbenchPartSite = this.getSite();
        Class<?> clazz = class$7;
        if (clazz == null) {
            try {
                clazz = class$7 = Class.forName("org.eclipse.ui.ISaveablesLifecycleListener");
            }
            catch (ClassNotFoundException classNotFoundException) {
                throw new NoClassDefFoundError(classNotFoundException.getMessage());
            }
        }
        if ((listener = (ISaveablesLifecycleListener)iWorkbenchPartSite.getService((Class)clazz)) == null) {
            this.fSavable = null;
        }
        if (input == null) {
            this.close(this.isSaveOnCloseNeeded());
            if (this.fSavable != null) {
                listener.handleLifecycleEvent(new SaveablesLifecycleEvent((Object)this, 3, this.getSaveables(), false));
                this.fSavable.disconnectEditor();
                this.fSavable = null;
            }
        } else {
            IVerticalRuler ruler;
            IEditorInput oldInput;
            boolean mustSendLifeCycleEvent = false;
            if (this.fSavable != null) {
                listener.handleLifecycleEvent(new SaveablesLifecycleEvent((Object)this, 3, this.getSaveables(), false));
                this.fSavable.disconnectEditor();
                this.fSavable = null;
                mustSendLifeCycleEvent = true;
            }
            if ((oldInput = this.getEditorInput()) != null) {
                this.getDocumentProvider().disconnect(oldInput);
            }
            super.setInput(input);
            this.updateDocumentProvider(input);
            IDocumentProvider provider = this.getDocumentProvider();
            if (provider == null) {
                Status s = new Status(4, "org.eclipse.ui", 0, EditorMessages.Editor_error_no_provider, null);
                throw new CoreException((IStatus)s);
            }
            provider.connect(input);
            this.initializeTitle(input);
            if (this.fSourceViewer != null) {
                this.initializeSourceViewer(input);
                IAction undoAction = this.getAction(ITextEditorActionConstants.UNDO);
                IAction redoAction = this.getAction(ITextEditorActionConstants.REDO);
                boolean areOperationActionHandlersInstalled = undoAction instanceof OperationHistoryActionHandler && redoAction instanceof OperationHistoryActionHandler;
                IUndoContext undoContext = this.getUndoContext();
                if (undoContext != null && areOperationActionHandlersInstalled) {
                    ((OperationHistoryActionHandler)undoAction).setContext(undoContext);
                    ((OperationHistoryActionHandler)redoAction).setContext(undoContext);
                } else {
                    this.createUndoRedoActions();
                }
            }
            if (this.fIsOverwriting) {
                this.toggleOverwriteMode();
            }
            this.setInsertMode((ITextEditorExtension3.InsertMode)this.getLegalInsertModes().get(0));
            this.updateCaret();
            this.updateStatusField("ElementState");
            if (this.fSelectionListener != null) {
                this.fSelectionListener.setDocument(this.getDocumentProvider().getDocument(input));
            }
            if ((ruler = this.getVerticalRuler()) instanceof CompositeRuler) {
                this.updateContributedRulerColumns((CompositeRuler)ruler);
            }
            if (mustSendLifeCycleEvent && listener != null) {
                listener.handleLifecycleEvent(new SaveablesLifecycleEvent((Object)this, 1, this.getSaveables(), false));
            }
        }
    }

    private IUndoContext getUndoContext() {
        IUndoManager undoManager;
        if (this.fSourceViewer instanceof ITextViewerExtension6 && (undoManager = ((ITextViewerExtension6)this.fSourceViewer).getUndoManager()) instanceof IUndoManagerExtension) {
            return ((IUndoManagerExtension)undoManager).getUndoContext();
        }
        return null;
    }

    protected final void setInputWithNotify(IEditorInput input) {
        try {
            this.doSetInput(input);
            this.firePropertyChange(258);
        }
        catch (CoreException x) {
            String title = EditorMessages.Editor_error_setinput_title;
            String msg = EditorMessages.Editor_error_setinput_message;
            Shell shell = this.getSite().getShell();
            ErrorDialog.openError((Shell)shell, (String)title, (String)msg, (IStatus)x.getStatus());
        }
    }

    public final void setInput(IEditorInput input) {
        this.setInputWithNotify(input);
    }

    public void close(final boolean save) {
        this.enableSanityChecking(false);
        Display display = this.getSite().getShell().getDisplay();
        display.asyncExec(new Runnable(){

            public void run() {
                if (AbstractTextEditor.this.fSourceViewer != null) {
                    AbstractTextEditor.this.getSite().getPage().closeEditor((IEditorPart)AbstractTextEditor.this, save);
                }
            }
        });
    }

    public void dispose() {
        IOperationHistory history;
        if (this.fActivationListener != null) {
            this.fActivationListener.dispose();
            this.fActivationListener = null;
        }
        if (this.fTitleImage != null) {
            this.fTitleImage.dispose();
            this.fTitleImage = null;
        }
        this.disposeFont();
        this.disposeNonDefaultCaret();
        this.fInitialCaret = null;
        if (this.fForegroundColor != null) {
            this.fForegroundColor.dispose();
            this.fForegroundColor = null;
        }
        if (this.fBackgroundColor != null) {
            this.fBackgroundColor.dispose();
            this.fBackgroundColor = null;
        }
        if (this.fSelectionForegroundColor != null) {
            this.fSelectionForegroundColor.dispose();
            this.fSelectionForegroundColor = null;
        }
        if (this.fSelectionBackgroundColor != null) {
            this.fSelectionBackgroundColor.dispose();
            this.fSelectionBackgroundColor = null;
        }
        if (this.fFindScopeHighlightColor != null) {
            this.fFindScopeHighlightColor.dispose();
            this.fFindScopeHighlightColor = null;
        }
        if (this.fFontPropertyChangeListener != null) {
            JFaceResources.getFontRegistry().removeListener(this.fFontPropertyChangeListener);
            if (this.fPreferenceStore != null) {
                this.fPreferenceStore.removePropertyChangeListener(this.fFontPropertyChangeListener);
            }
            this.fFontPropertyChangeListener = null;
        }
        if (this.fPropertyChangeListener != null) {
            if (this.fPreferenceStore != null) {
                this.fPreferenceStore.removePropertyChangeListener(this.fPropertyChangeListener);
                this.fPreferenceStore = null;
            }
            this.fPropertyChangeListener = null;
        }
        if (this.fActivationCodeTrigger != null) {
            this.fActivationCodeTrigger.uninstall();
            this.fActivationCodeTrigger = null;
        }
        if (this.fSelectionListener != null) {
            this.fSelectionListener.uninstall(this.getSelectionProvider());
            this.fSelectionListener = null;
        }
        if (this.fSavable != null) {
            this.fSavable.disconnectEditor();
            this.fSavable = null;
        }
        this.disposeDocumentProvider();
        if (this.fSourceViewer != null) {
            if (this.fTextListener != null) {
                this.fSourceViewer.removeTextListener((ITextListener)this.fTextListener);
                this.fSourceViewer.removeTextInputListener((ITextInputListener)this.fTextListener);
                this.fTextListener = null;
            }
            this.uninstallTabsToSpacesConverter();
            this.fTextInputListener = null;
            this.fSelectionProvider = null;
            this.fSourceViewer = null;
        }
        if (this.fTextContextMenu != null) {
            this.fTextContextMenu.dispose();
            this.fTextContextMenu = null;
        }
        if (this.fRulerContextMenu != null) {
            this.fRulerContextMenu.dispose();
            this.fRulerContextMenu = null;
        }
        if (this.fActions != null) {
            this.registerUndoRedoAction(ITextEditorActionConstants.UNDO, null);
            this.registerUndoRedoAction(ITextEditorActionConstants.REDO, null);
            this.fActions.clear();
            this.fActions = null;
        }
        if (this.fSelectionActions != null) {
            this.fSelectionActions.clear();
            this.fSelectionActions = null;
        }
        if (this.fContentActions != null) {
            this.fContentActions.clear();
            this.fContentActions = null;
        }
        if (this.fPropertyActions != null) {
            this.fPropertyActions.clear();
            this.fPropertyActions = null;
        }
        if (this.fStateActions != null) {
            this.fStateActions.clear();
            this.fStateActions = null;
        }
        if (this.fActivationCodes != null) {
            this.fActivationCodes.clear();
            this.fActivationCodes = null;
        }
        if (this.fEditorStatusLine != null) {
            this.fEditorStatusLine = null;
        }
        if (this.fConfiguration != null) {
            this.fConfiguration = null;
        }
        if (this.fColumnSupport != null) {
            this.fColumnSupport.dispose();
            this.fColumnSupport = null;
        }
        if (this.fVerticalRuler != null) {
            this.fVerticalRuler = null;
        }
        if ((history = OperationHistoryFactory.getOperationHistory()) != null) {
            if (this.fNonLocalOperationApprover != null) {
                history.removeOperationApprover(this.fNonLocalOperationApprover);
            }
            if (this.fLinearUndoViolationApprover != null) {
                history.removeOperationApprover(this.fLinearUndoViolationApprover);
            }
        }
        this.fNonLocalOperationApprover = null;
        this.fLinearUndoViolationApprover = null;
        if (this.fKeyBindingSupportForContentAssistant != null) {
            this.fKeyBindingSupportForContentAssistant.dispose();
            this.fKeyBindingSupportForContentAssistant = null;
        }
        if (this.fKeyBindingSupportForQuickAssistant != null) {
            this.fKeyBindingSupportForQuickAssistant.dispose();
            this.fKeyBindingSupportForQuickAssistant = null;
        }
        if (this.fInformationPresenter != null) {
            this.fInformationPresenter.uninstall();
            this.fInformationPresenter = null;
        }
        if (this.fSaveAction != null) {
            this.fSaveAction.dispose();
            this.fSaveAction = null;
        }
        super.dispose();
    }

    protected void disposeDocumentProvider() {
        IDocumentProvider provider = this.getDocumentProvider();
        if (provider != null) {
            IEditorInput input = this.getEditorInput();
            if (input != null) {
                provider.disconnect(input);
            }
            if (this.fElementStateListener != null) {
                provider.removeElementStateListener(this.fElementStateListener);
                this.fElementStateListener = null;
            }
        }
        this.fExplicitDocumentProvider = null;
    }

    protected boolean affectsTextPresentation(PropertyChangeEvent event) {
        return false;
    }

    private String getSymbolicFontName() {
        if (this.getConfigurationElement() != null) {
            return this.getConfigurationElement().getAttribute("symbolicFontName");
        }
        return null;
    }

    protected final String getFontPropertyPreferenceKey() {
        String symbolicFontName = this.getSymbolicFontName();
        if (symbolicFontName != null) {
            return symbolicFontName;
        }
        return PREFERENCE_FONT;
    }

    protected void handlePreferenceStoreChanged(PropertyChangeEvent event) {
        if (this.fSourceViewer == null) {
            return;
        }
        String property = event.getProperty();
        if (this.getFontPropertyPreferenceKey().equals(property)) {
            return;
        }
        if (PREFERENCE_COLOR_FOREGROUND.equals(property) || PREFERENCE_COLOR_FOREGROUND_SYSTEM_DEFAULT.equals(property) || PREFERENCE_COLOR_BACKGROUND.equals(property) || PREFERENCE_COLOR_BACKGROUND_SYSTEM_DEFAULT.equals(property) || PREFERENCE_COLOR_SELECTION_FOREGROUND.equals(property) || PREFERENCE_COLOR_SELECTION_FOREGROUND_SYSTEM_DEFAULT.equals(property) || PREFERENCE_COLOR_SELECTION_BACKGROUND.equals(property) || PREFERENCE_COLOR_SELECTION_BACKGROUND_SYSTEM_DEFAULT.equals(property)) {
            this.initializeViewerColors(this.fSourceViewer);
        } else if (PREFERENCE_COLOR_FIND_SCOPE.equals(property)) {
            this.initializeFindScopeColor(this.fSourceViewer);
        } else if (PREFERENCE_USE_CUSTOM_CARETS.equals(property)) {
            this.updateCaret();
        } else if (PREFERENCE_WIDE_CARET.equals(property)) {
            this.updateCaret();
        }
        if (this.affectsTextPresentation(event)) {
            this.fSourceViewer.invalidateTextPresentation();
        }
        if (PREFERENCE_HYPERLINKS_ENABLED.equals(property)) {
            if (this.fSourceViewer instanceof ITextViewerExtension6) {
                IHyperlinkDetector[] detectors = this.getSourceViewerConfiguration().getHyperlinkDetectors(this.fSourceViewer);
                int stateMask = this.getSourceViewerConfiguration().getHyperlinkStateMask(this.fSourceViewer);
                ITextViewerExtension6 textViewer6 = (ITextViewerExtension6)this.fSourceViewer;
                textViewer6.setHyperlinkDetectors(detectors, stateMask);
            }
            return;
        }
        if (PREFERENCE_HYPERLINK_KEY_MODIFIER.equals(property)) {
            if (this.fSourceViewer instanceof ITextViewerExtension6) {
                ITextViewerExtension6 textViewer6 = (ITextViewerExtension6)this.fSourceViewer;
                IHyperlinkDetector[] detectors = this.getSourceViewerConfiguration().getHyperlinkDetectors(this.fSourceViewer);
                int stateMask = this.getSourceViewerConfiguration().getHyperlinkStateMask(this.fSourceViewer);
                textViewer6.setHyperlinkDetectors(detectors, stateMask);
            }
            return;
        }
        if (PREFERENCE_RULER_CONTRIBUTIONS.equals(property)) {
            String[] difference = StringSetSerializer.getDifference((String)event.getOldValue(), (String)event.getNewValue());
            Class<?> clazz = class$3;
            if (clazz == null) {
                try {
                    clazz = class$3 = Class.forName("org.eclipse.ui.texteditor.rulers.IColumnSupport");
                }
                catch (ClassNotFoundException classNotFoundException) {
                    throw new NoClassDefFoundError(classNotFoundException.getMessage());
                }
            }
            IColumnSupport support = (IColumnSupport)this.getAdapter(clazz);
            int i = 0;
            while (i < difference.length) {
                RulerColumnDescriptor desc = RulerColumnRegistry.getDefault().getColumnDescriptor(difference[i]);
                if (desc != null && support.isColumnSupported(desc)) {
                    boolean newState = !support.isColumnVisible(desc);
                    support.setColumnVisible(desc, newState);
                }
                ++i;
            }
            return;
        }
        if (PREFERENCE_SHOW_WHITESPACE_CHARACTERS.equals(property) || PREFERENCE_SHOW_LEADING_SPACES.equals(property) || PREFERENCE_SHOW_ENCLOSED_SPACES.equals(property) || PREFERENCE_SHOW_TRAILING_SPACES.equals(property) || PREFERENCE_SHOW_LEADING_IDEOGRAPHIC_SPACES.equals(property) || PREFERENCE_SHOW_ENCLOSED_IDEOGRAPHIC_SPACES.equals(property) || PREFERENCE_SHOW_TRAILING_IDEOGRAPHIC_SPACES.equals(property) || PREFERENCE_SHOW_LEADING_TABS.equals(property) || PREFERENCE_SHOW_ENCLOSED_TABS.equals(property) || PREFERENCE_SHOW_TRAILING_TABS.equals(property) || PREFERENCE_SHOW_CARRIAGE_RETURN.equals(property) || PREFERENCE_SHOW_LINE_FEED.equals(property) || PREFERENCE_WHITESPACE_CHARACTER_ALPHA_VALUE.equals(property)) {
            IAction action = this.getAction("ShowWhitespaceCharacters");
            if (action instanceof IUpdate) {
                ((IUpdate)action).update();
            }
            return;
        }
        if (PREFERENCE_TEXT_DRAG_AND_DROP_ENABLED.equals(property)) {
            IPreferenceStore store = this.getPreferenceStore();
            if (store != null && store.getBoolean(PREFERENCE_TEXT_DRAG_AND_DROP_ENABLED)) {
                this.installTextDragAndDrop(this.getSourceViewer());
            } else {
                this.uninstallTextDragAndDrop(this.getSourceViewer());
            }
            return;
        }
        if (PREFERENCE_HOVER_ENRICH_MODE.equals(property)) {
            IPreferenceStore store;
            if (this.fSourceViewer instanceof ITextViewerExtension8 && (store = this.getPreferenceStore()) != null) {
                ((ITextViewerExtension8)this.fSourceViewer).setHoverEnrichMode(this.convertEnrichModePreference(store.getInt(PREFERENCE_HOVER_ENRICH_MODE)));
            }
            return;
        }
    }

    protected IProgressMonitor getProgressMonitor() {
        IProgressMonitor pm = null;
        IStatusLineManager manager = this.getStatusLineManager();
        if (manager != null) {
            pm = manager.getProgressMonitor();
        }
        return pm != null ? pm : new NullProgressMonitor();
    }

    protected void handleEditorInputChanged() {
        block14: {
            Shell shell = this.getSite().getShell();
            IDocumentProvider provider = this.getDocumentProvider();
            if (provider == null) {
                this.close(false);
                return;
            }
            IEditorInput input = this.getEditorInput();
            String inputName = input.getToolTipText();
            if (provider.isDeleted(input)) {
                if (this.isSaveAsAllowed()) {
                    String[] buttons;
                    String title = EditorMessages.Editor_error_activated_deleted_save_title;
                    String msg = NLSUtility.format(EditorMessages.Editor_error_activated_deleted_save_message, inputName);
                    MessageDialog dialog = new MessageDialog(shell, title, null, msg, 3, buttons = new String[]{EditorMessages.Editor_error_activated_deleted_save_button_save, EditorMessages.Editor_error_activated_deleted_save_button_close}, 0);
                    if (dialog.open() == 0) {
                        IProgressMonitor pm = this.getProgressMonitor();
                        this.performSaveAs(pm);
                        if (pm.isCanceled()) {
                            this.handleEditorInputChanged();
                        }
                    } else {
                        this.close(false);
                    }
                } else {
                    String title = EditorMessages.Editor_error_activated_deleted_close_title;
                    String msg = NLSUtility.format(EditorMessages.Editor_error_activated_deleted_close_message, inputName);
                    if (MessageDialog.openConfirm((Shell)shell, (String)title, (String)msg)) {
                        this.close(false);
                    }
                }
            } else {
                String title = EditorMessages.Editor_error_activated_outofsync_title;
                String msg = NLSUtility.format(EditorMessages.Editor_error_activated_outofsync_message, inputName);
                if (this.fHasBeenActivated && MessageDialog.openQuestion((Shell)shell, (String)title, (String)msg)) {
                    try {
                        if (provider instanceof IDocumentProviderExtension) {
                            IDocumentProviderExtension extension = (IDocumentProviderExtension)((Object)provider);
                            extension.synchronize(input);
                        } else {
                            this.doSetInput(input);
                        }
                    }
                    catch (CoreException x) {
                        IStatus status = x.getStatus();
                        if (status != null && status.getSeverity() == 8) break block14;
                        title = EditorMessages.Editor_error_refresh_outofsync_title;
                        msg = NLSUtility.format(EditorMessages.Editor_error_refresh_outofsync_message, inputName);
                        ErrorDialog.openError((Shell)shell, (String)title, (String)msg, (IStatus)x.getStatus());
                    }
                }
            }
        }
    }

    public void doSaveAs() {
        this.performSaveAs(this.getProgressMonitor());
    }

    protected void performSaveAs(IProgressMonitor progressMonitor) {
    }

    public void doSave(IProgressMonitor progressMonitor) {
        IDocumentProvider p = this.getDocumentProvider();
        if (p == null) {
            return;
        }
        if (p.isDeleted(this.getEditorInput())) {
            if (this.isSaveAsAllowed()) {
                this.performSaveAs(progressMonitor);
            } else {
                Shell shell = this.getSite().getShell();
                String title = EditorMessages.Editor_error_save_deleted_title;
                String msg = EditorMessages.Editor_error_save_deleted_message;
                MessageDialog.openError((Shell)shell, (String)title, (String)msg);
            }
        } else {
            this.updateState(this.getEditorInput());
            this.validateState(this.getEditorInput());
            this.performSave(false, progressMonitor);
        }
    }

    /*
     * WARNING - Removed try catching itself - possible behaviour change.
     */
    protected void enableSanityChecking(boolean enable) {
        AbstractTextEditor abstractTextEditor = this;
        synchronized (abstractTextEditor) {
            this.fIsSanityCheckEnabled = enable;
        }
    }

    /*
     * WARNING - Removed try catching itself - possible behaviour change.
     */
    protected void safelySanityCheckState(IEditorInput input) {
        boolean enabled = false;
        AbstractTextEditor abstractTextEditor = this;
        synchronized (abstractTextEditor) {
            enabled = this.fIsSanityCheckEnabled;
        }
        if (enabled) {
            this.sanityCheckState(input);
        }
    }

    protected void sanityCheckState(IEditorInput input) {
        IDocumentProvider p = this.getDocumentProvider();
        if (p == null) {
            return;
        }
        if (p instanceof IDocumentProviderExtension3) {
            IDocumentProviderExtension3 p3 = (IDocumentProviderExtension3)((Object)p);
            long stamp = p.getModificationStamp(input);
            if (stamp != this.fModificationStamp) {
                this.fModificationStamp = stamp;
                if (!p3.isSynchronized(input)) {
                    this.handleEditorInputChanged();
                }
            }
        } else {
            long stamp;
            if (this.fModificationStamp == -1L) {
                this.fModificationStamp = p.getSynchronizationStamp(input);
            }
            if ((stamp = p.getModificationStamp(input)) != this.fModificationStamp) {
                this.fModificationStamp = stamp;
                if (stamp != p.getSynchronizationStamp(input)) {
                    this.handleEditorInputChanged();
                }
            }
        }
        this.updateState(this.getEditorInput());
        this.updateStatusField("ElementState");
    }

    /*
     * WARNING - Removed try catching itself - possible behaviour change.
     */
    protected void enableStateValidation(boolean enable) {
        AbstractTextEditor abstractTextEditor = this;
        synchronized (abstractTextEditor) {
            this.fIsStateValidationEnabled = enable;
        }
    }

    protected void validateState(IEditorInput input) {
        IDocumentProvider provider = this.getDocumentProvider();
        if (!(provider instanceof IDocumentProviderExtension)) {
            return;
        }
        IDocumentProviderExtension extension = (IDocumentProviderExtension)((Object)provider);
        try {
            extension.validateState(input, this.getSite().getShell());
        }
        catch (CoreException x) {
            IStatus status = x.getStatus();
            if (status == null || status.getSeverity() != 8) {
                Bundle bundle = Platform.getBundle((String)"org.eclipse.ui");
                ILog log = Platform.getLog((Bundle)bundle);
                log.log(x.getStatus());
                Shell shell = this.getSite().getShell();
                String title = EditorMessages.Editor_error_validateEdit_title;
                String msg = EditorMessages.Editor_error_validateEdit_message;
                ErrorDialog.openError((Shell)shell, (String)title, (String)msg, (IStatus)x.getStatus());
            }
            return;
        }
        if (this.fSourceViewer != null) {
            this.fSourceViewer.setEditable(this.isEditable());
        }
        this.updateStateDependentActions();
    }

    /*
     * WARNING - Removed try catching itself - possible behaviour change.
     */
    public boolean validateEditorInputState() {
        boolean enabled = false;
        AbstractTextEditor abstractTextEditor = this;
        synchronized (abstractTextEditor) {
            enabled = this.fIsStateValidationEnabled;
        }
        if (enabled) {
            ISourceViewer viewer = this.fSourceViewer;
            if (viewer == null) {
                return false;
            }
            this.fTextInputListener.inputChanged = false;
            viewer.addTextInputListener((ITextInputListener)this.fTextInputListener);
            try {
                final IEditorInput input = this.getEditorInput();
                BusyIndicator.showWhile((Display)this.getSite().getShell().getDisplay(), (Runnable)new Runnable(){

                    public void run() {
                        AbstractTextEditor.this.validateState(input);
                    }
                });
                this.sanityCheckState(input);
                boolean bl = !this.isEditorInputReadOnly() && !this.fTextInputListener.inputChanged;
                return bl;
            }
            finally {
                viewer.removeTextInputListener((ITextInputListener)this.fTextInputListener);
            }
        }
        return !this.isEditorInputReadOnly();
    }

    protected void updateState(IEditorInput input) {
        IDocumentProvider provider = this.getDocumentProvider();
        if (provider instanceof IDocumentProviderExtension) {
            IDocumentProviderExtension extension = (IDocumentProviderExtension)((Object)provider);
            try {
                boolean wasReadOnly = this.isEditorInputReadOnly();
                extension.updateStateCache(input);
                if (this.fSourceViewer != null) {
                    this.fSourceViewer.setEditable(this.isEditable());
                }
                if (wasReadOnly != this.isEditorInputReadOnly()) {
                    this.updateStateDependentActions();
                }
            }
            catch (CoreException x) {
                Bundle bundle = Platform.getBundle((String)"org.eclipse.ui");
                ILog log = Platform.getLog((Bundle)bundle);
                log.log(x.getStatus());
            }
        }
    }

    protected void performSave(boolean overwrite, IProgressMonitor progressMonitor) {
        IDocumentProvider provider = this.getDocumentProvider();
        if (provider == null) {
            return;
        }
        try {
            try {
                provider.aboutToChange(this.getEditorInput());
                IEditorInput input = this.getEditorInput();
                provider.saveDocument(progressMonitor, input, this.getDocumentProvider().getDocument(input), overwrite);
                this.editorSaved();
            }
            catch (CoreException x) {
                IStatus status = x.getStatus();
                if (status == null || status.getSeverity() != 8) {
                    this.handleExceptionOnSave(x, progressMonitor);
                }
                provider.changed(this.getEditorInput());
            }
        }
        finally {
            provider.changed(this.getEditorInput());
        }
    }

    protected void handleExceptionOnSave(CoreException exception, IProgressMonitor progressMonitor) {
        try {
            String title;
            ++this.fErrorCorrectionOnSave;
            boolean isSynchronized = false;
            IDocumentProvider p = this.getDocumentProvider();
            if (p instanceof IDocumentProviderExtension3) {
                IDocumentProviderExtension3 p3 = (IDocumentProviderExtension3)((Object)p);
                isSynchronized = p3.isSynchronized(this.getEditorInput());
            } else {
                long synchStamp;
                long modifiedStamp = p.getModificationStamp(this.getEditorInput());
                boolean bl = isSynchronized = modifiedStamp == (synchStamp = p.getSynchronizationStamp(this.getEditorInput()));
            }
            if (this.isNotSynchronizedException(exception) && this.fErrorCorrectionOnSave == 1 && !isSynchronized) {
                title = EditorMessages.Editor_error_save_outofsync_title;
                String msg = NLSUtility.format(EditorMessages.Editor_error_save_outofsync_message, this.getEditorInput().getToolTipText());
                if (MessageDialog.openQuestion((Shell)this.getSite().getShell(), (String)title, (String)msg)) {
                    this.performSave(true, progressMonitor);
                } else if (progressMonitor != null) {
                    progressMonitor.setCanceled(true);
                }
            } else {
                title = EditorMessages.Editor_error_save_title;
                String msg = EditorMessages.Editor_error_save_message;
                this.openSaveErrorDialog(title, msg, exception);
                if (progressMonitor != null) {
                    progressMonitor.setCanceled(true);
                }
            }
        }
        finally {
            --this.fErrorCorrectionOnSave;
        }
    }

    protected void openSaveErrorDialog(String title, String message, CoreException exception) {
        ErrorDialog.openError((Shell)this.getSite().getShell(), (String)title, (String)message, (IStatus)exception.getStatus());
    }

    private boolean isNotSynchronizedException(CoreException ex) {
        IDocumentProvider provider = this.getDocumentProvider();
        if (provider instanceof IDocumentProviderExtension5) {
            return ((IDocumentProviderExtension5)((Object)provider)).isNotSynchronizedException(this.getEditorInput(), ex);
        }
        return false;
    }

    public boolean isSaveAsAllowed() {
        return false;
    }

    public boolean isDirty() {
        IDocumentProvider p = this.getDocumentProvider();
        return p == null ? false : p.canSaveDocument(this.getEditorInput());
    }

    public void doRevertToSaved() {
        IDocumentProvider p = this.getDocumentProvider();
        if (p == null) {
            return;
        }
        this.performRevert();
    }

    protected void performRevert() {
        IDocumentProvider provider = this.getDocumentProvider();
        if (provider == null) {
            return;
        }
        try {
            try {
                provider.aboutToChange(this.getEditorInput());
                provider.resetDocument(this.getEditorInput());
                this.editorSaved();
            }
            catch (CoreException x) {
                IStatus status = x.getStatus();
                if (status == null || status.getSeverity() != 8) {
                    Shell shell = this.getSite().getShell();
                    String title = EditorMessages.Editor_error_revert_title;
                    String msg = EditorMessages.Editor_error_revert_message;
                    ErrorDialog.openError((Shell)shell, (String)title, (String)msg, (IStatus)x.getStatus());
                }
                provider.changed(this.getEditorInput());
            }
        }
        finally {
            provider.changed(this.getEditorInput());
        }
    }

    protected void handleElementContentReplaced() {
    }

    public void setAction(String actionID, IAction action) {
        Assert.isNotNull((Object)actionID);
        if (action == null) {
            action = (IAction)this.fActions.remove(actionID);
            if (action != null) {
                this.fActivationCodeTrigger.unregisterActionFromKeyActivation(action);
            }
        } else {
            if (action.getId() == null) {
                action.setId(actionID);
            }
            this.fActions.put(actionID, action);
            this.fActivationCodeTrigger.registerActionForKeyActivation(action);
        }
    }

    private void setActionActivation(boolean state) {
        if (state) {
            this.fActivationCodeTrigger.install();
            Iterator iter = this.fActions.values().iterator();
            while (iter.hasNext()) {
                IAction action = (IAction)iter.next();
                if (action == null) continue;
                this.fActivationCodeTrigger.registerActionForKeyActivation(action);
            }
            this.getEditorSite().getActionBarContributor().setActiveEditor((IEditorPart)this);
        } else {
            this.getEditorSite().getActionBarContributor().setActiveEditor(null);
            Iterator iter = this.fActions.values().iterator();
            while (iter.hasNext()) {
                IAction action = (IAction)iter.next();
                if (action == null) continue;
                this.fActivationCodeTrigger.unregisterActionFromKeyActivation(action);
            }
            this.fActivationCodeTrigger.uninstall();
        }
    }

    public void setActionActivationCode(String actionID, char activationCharacter, int activationKeyCode, int activationStateMask) {
        Assert.isNotNull((Object)actionID);
        ActionActivationCode found = this.findActionActivationCode(actionID);
        if (found == null) {
            found = new ActionActivationCode(actionID);
            this.fActivationCodes.add(found);
        }
        found.fCharacter = activationCharacter;
        found.fKeyCode = activationKeyCode;
        found.fStateMask = activationStateMask;
    }

    private ActionActivationCode findActionActivationCode(String actionID) {
        int size = this.fActivationCodes.size();
        int i = 0;
        while (i < size) {
            ActionActivationCode code = (ActionActivationCode)this.fActivationCodes.get(i);
            if (actionID.equals(code.fActionId)) {
                return code;
            }
            ++i;
        }
        return null;
    }

    public void removeActionActivationCode(String actionID) {
        Assert.isNotNull((Object)actionID);
        ActionActivationCode code = this.findActionActivationCode(actionID);
        if (code != null) {
            this.fActivationCodes.remove(code);
        }
    }

    public IAction getAction(String actionID) {
        Assert.isNotNull((Object)actionID);
        IAction action = (IAction)this.fActions.get(actionID);
        if (action == null && (action = this.findContributedAction(actionID)) != null) {
            this.setAction(actionID, action);
        }
        return action;
    }

    private IAction findContributedAction(String actionID) {
        Object element;
        ArrayList<IConfigurationElement> actions = new ArrayList<IConfigurationElement>();
        IConfigurationElement[] elements = Platform.getExtensionRegistry().getConfigurationElementsFor("org.eclipse.ui", "editorActions");
        int i = 0;
        while (i < elements.length) {
            element = elements[i];
            if (TAG_CONTRIBUTION_TYPE.equals(element.getName()) && this.getSite().getId().equals(element.getAttribute("targetID"))) {
                IConfigurationElement[] children = element.getChildren("action");
                int j = 0;
                while (j < children.length) {
                    IConfigurationElement child = children[j];
                    if (actionID.equals(child.getAttribute("actionID"))) {
                        actions.add(child);
                    }
                    ++j;
                }
            }
            ++i;
        }
        int actionSize = actions.size();
        if (actionSize > 0) {
            if (actionSize > 1) {
                Object[] actionArray = actions.toArray(new IConfigurationElement[actionSize]);
                ConfigurationElementSorter sorter = new ConfigurationElementSorter(){

                    public IConfigurationElement getConfigurationElement(Object object) {
                        return (IConfigurationElement)object;
                    }
                };
                sorter.sort(actionArray);
                element = actionArray[0];
            } else {
                element = (IConfigurationElement)actions.get(0);
            }
            try {
                return new ContributedAction((IServiceLocator)this.getSite(), element);
            }
            catch (CommandNotMappedException commandNotMappedException) {}
        }
        return null;
    }

    private void updateAction(String actionId) {
        IAction action;
        Assert.isNotNull((Object)actionId);
        if (this.fActions != null && (action = (IAction)this.fActions.get(actionId)) instanceof IUpdate) {
            ((IUpdate)action).update();
        }
    }

    public void markAsSelectionDependentAction(String actionId, boolean mark) {
        Assert.isNotNull((Object)actionId);
        if (mark) {
            if (!this.fSelectionActions.contains(actionId)) {
                this.fSelectionActions.add(actionId);
            }
        } else {
            this.fSelectionActions.remove(actionId);
        }
    }

    public void markAsContentDependentAction(String actionId, boolean mark) {
        Assert.isNotNull((Object)actionId);
        if (mark) {
            if (!this.fContentActions.contains(actionId)) {
                this.fContentActions.add(actionId);
            }
        } else {
            this.fContentActions.remove(actionId);
        }
    }

    public void markAsPropertyDependentAction(String actionId, boolean mark) {
        Assert.isNotNull((Object)actionId);
        if (mark) {
            if (!this.fPropertyActions.contains(actionId)) {
                this.fPropertyActions.add(actionId);
            }
        } else {
            this.fPropertyActions.remove(actionId);
        }
    }

    public void markAsStateDependentAction(String actionId, boolean mark) {
        Assert.isNotNull((Object)actionId);
        if (mark) {
            if (!this.fStateActions.contains(actionId)) {
                this.fStateActions.add(actionId);
            }
        } else {
            this.fStateActions.remove(actionId);
        }
    }

    protected void updateSelectionDependentActions() {
        if (this.fSelectionActions != null) {
            Iterator e = this.fSelectionActions.iterator();
            while (e.hasNext()) {
                this.updateAction((String)e.next());
            }
        }
    }

    protected void updateContentDependentActions() {
        if (this.fContentActions != null) {
            Iterator e = this.fContentActions.iterator();
            while (e.hasNext()) {
                this.updateAction((String)e.next());
            }
        }
    }

    protected void updatePropertyDependentActions() {
        if (this.fPropertyActions != null) {
            Iterator e = this.fPropertyActions.iterator();
            while (e.hasNext()) {
                this.updateAction((String)e.next());
            }
        }
    }

    protected void updateStateDependentActions() {
        if (this.fStateActions != null) {
            Iterator e = this.fStateActions.iterator();
            while (e.hasNext()) {
                this.updateAction((String)e.next());
            }
        }
    }

    protected void createNavigationActions() {
        Action action;
        StyledText textWidget = this.fSourceViewer.getTextWidget();
        int i = 0;
        while (i < ACTION_MAP.length) {
            IdMapEntry entry = ACTION_MAP[i];
            action = new TextNavigationAction(textWidget, entry.getAction());
            action.setActionDefinitionId(entry.getActionId());
            this.setAction(entry.getActionId(), (IAction)action);
            ++i;
        }
        action = new ToggleOverwriteModeAction(EditorMessages.getBundleForConstructedKeys(), "Editor.ToggleOverwriteMode.");
        action.setActionDefinitionId("org.eclipse.ui.edit.text.toggleOverwrite");
        this.setAction("org.eclipse.ui.edit.text.toggleOverwrite", (IAction)action);
        textWidget.setKeyBinding(0x1000009, 0);
        action = new ScrollLinesAction(-1);
        action.setActionDefinitionId("org.eclipse.ui.edit.text.scroll.lineUp");
        this.setAction("org.eclipse.ui.edit.text.scroll.lineUp", (IAction)action);
        action = new ScrollLinesAction(1);
        action.setActionDefinitionId("org.eclipse.ui.edit.text.scroll.lineDown");
        this.setAction("org.eclipse.ui.edit.text.scroll.lineDown", (IAction)action);
        action = new LineEndAction(textWidget, false);
        action.setActionDefinitionId("org.eclipse.ui.edit.text.goto.lineEnd");
        this.setAction("org.eclipse.ui.edit.text.goto.lineEnd", (IAction)action);
        action = new LineStartAction(textWidget, false);
        action.setActionDefinitionId("org.eclipse.ui.edit.text.goto.lineStart");
        this.setAction("org.eclipse.ui.edit.text.goto.lineStart", (IAction)action);
        action = new LineEndAction(textWidget, true);
        action.setActionDefinitionId("org.eclipse.ui.edit.text.select.lineEnd");
        this.setAction("org.eclipse.ui.edit.text.select.lineEnd", (IAction)action);
        action = new LineStartAction(textWidget, true);
        action.setActionDefinitionId("org.eclipse.ui.edit.text.select.lineStart");
        this.setAction("org.eclipse.ui.edit.text.select.lineStart", (IAction)action);
        textWidget.setKeyBinding(127, 0);
    }

    private void createAccessibilityActions() {
        ShowRulerContextMenuAction action = new ShowRulerContextMenuAction();
        action.setActionDefinitionId("org.eclipse.ui.edit.text.showRulerContextMenu");
        this.setAction("org.eclipse.ui.edit.text.showRulerContextMenu", (IAction)action);
    }

    protected void createUndoRedoActions() {
        IUndoContext undoContext = this.getUndoContext();
        if (undoContext != null) {
            UndoActionHandler undoAction = new UndoActionHandler((IWorkbenchPartSite)this.getEditorSite(), undoContext);
            PlatformUI.getWorkbench().getHelpSystem().setHelp((IAction)undoAction, IAbstractTextEditorHelpContextIds.UNDO_ACTION);
            undoAction.setActionDefinitionId("org.eclipse.ui.edit.undo");
            this.registerUndoRedoAction(ITextEditorActionConstants.UNDO, (OperationHistoryActionHandler)undoAction);
            RedoActionHandler redoAction = new RedoActionHandler((IWorkbenchPartSite)this.getEditorSite(), undoContext);
            PlatformUI.getWorkbench().getHelpSystem().setHelp((IAction)redoAction, IAbstractTextEditorHelpContextIds.REDO_ACTION);
            redoAction.setActionDefinitionId("org.eclipse.ui.edit.redo");
            this.registerUndoRedoAction(ITextEditorActionConstants.REDO, (OperationHistoryActionHandler)redoAction);
            IOperationHistory history = OperationHistoryFactory.getOperationHistory();
            if (this.fNonLocalOperationApprover != null) {
                history.removeOperationApprover(this.fNonLocalOperationApprover);
            }
            this.fNonLocalOperationApprover = this.getUndoRedoOperationApprover(undoContext);
            history.addOperationApprover(this.fNonLocalOperationApprover);
            if (this.fLinearUndoViolationApprover != null) {
                history.removeOperationApprover(this.fLinearUndoViolationApprover);
            }
            this.fLinearUndoViolationApprover = new LinearUndoViolationUserApprover(undoContext, (IWorkbenchPart)this);
            history.addOperationApprover(this.fLinearUndoViolationApprover);
        } else {
            TextOperationAction action;
            if (this.getAction(ITextEditorActionConstants.UNDO) == null) {
                action = new TextOperationAction(EditorMessages.getBundleForConstructedKeys(), "Editor.Undo.", this, 1);
                action.setHelpContextId(IAbstractTextEditorHelpContextIds.UNDO_ACTION);
                action.setActionDefinitionId("org.eclipse.ui.edit.undo");
                this.setAction(ITextEditorActionConstants.UNDO, (IAction)action);
            }
            if (this.getAction(ITextEditorActionConstants.REDO) == null) {
                action = new TextOperationAction(EditorMessages.getBundleForConstructedKeys(), "Editor.Redo.", this, 2);
                action.setHelpContextId(IAbstractTextEditorHelpContextIds.REDO_ACTION);
                action.setActionDefinitionId("org.eclipse.ui.edit.redo");
                this.setAction(ITextEditorActionConstants.REDO, (IAction)action);
            }
        }
    }

    private void registerUndoRedoAction(String actionId, OperationHistoryActionHandler action) {
        IAction oldAction = this.getAction(actionId);
        if (oldAction instanceof OperationHistoryActionHandler) {
            ((OperationHistoryActionHandler)oldAction).dispose();
        }
        if (action == null) {
            return;
        }
        this.setAction(actionId, (IAction)action);
        IActionBars actionBars = this.getEditorSite().getActionBars();
        if (actionBars != null) {
            actionBars.setGlobalActionHandler(actionId, (IAction)action);
        }
    }

    protected IOperationApprover getUndoRedoOperationApprover(IUndoContext undoContext) {
        Object[] objectArray = new Object[]{this.getEditorInput()};
        Class<?> clazz = class$8;
        if (clazz == null) {
            try {
                clazz = class$8 = Class.forName("java.lang.Object");
            }
            catch (ClassNotFoundException classNotFoundException) {
                throw new NoClassDefFoundError(classNotFoundException.getMessage());
            }
        }
        return new NonLocalUndoUserApprover(undoContext, (IEditorPart)this, objectArray, (Class)clazz);
    }

    protected void createActions() {
        ResourceAction action = new TextOperationAction(EditorMessages.getBundleForConstructedKeys(), "Editor.Cut.", this, 3);
        action.setHelpContextId(IAbstractTextEditorHelpContextIds.CUT_ACTION);
        action.setActionDefinitionId("org.eclipse.ui.edit.cut");
        this.setAction(ITextEditorActionConstants.CUT, (IAction)action);
        action = new TextOperationAction(EditorMessages.getBundleForConstructedKeys(), "Editor.Copy.", this, 4, true);
        action.setHelpContextId(IAbstractTextEditorHelpContextIds.COPY_ACTION);
        action.setActionDefinitionId("org.eclipse.ui.edit.copy");
        this.setAction(ITextEditorActionConstants.COPY, (IAction)action);
        action = new TextOperationAction(EditorMessages.getBundleForConstructedKeys(), "Editor.Paste.", this, 5);
        action.setHelpContextId(IAbstractTextEditorHelpContextIds.PASTE_ACTION);
        action.setActionDefinitionId("org.eclipse.ui.edit.paste");
        this.setAction(ITextEditorActionConstants.PASTE, (IAction)action);
        action = new TextOperationAction(EditorMessages.getBundleForConstructedKeys(), "Editor.Delete.", this, 6);
        action.setHelpContextId(IAbstractTextEditorHelpContextIds.DELETE_ACTION);
        action.setActionDefinitionId("org.eclipse.ui.edit.delete");
        this.setAction(ITextEditorActionConstants.DELETE, (IAction)action);
        action = new DeleteLineAction(EditorMessages.getBundleForConstructedKeys(), "Editor.DeleteLine.", this, 0, false);
        action.setHelpContextId("org.eclipse.ui.DeleteLine_action_context");
        action.setActionDefinitionId("org.eclipse.ui.edit.text.delete.line");
        this.setAction("DeleteLine", (IAction)action);
        action = new DeleteLineAction(EditorMessages.getBundleForConstructedKeys(), "Editor.CutLine.", this, 0, true);
        action.setHelpContextId("org.eclipse.ui.CutLine_action_context");
        action.setActionDefinitionId("org.eclipse.ui.edit.text.cut.line");
        this.setAction("CutLine", (IAction)action);
        action = new DeleteLineAction(EditorMessages.getBundleForConstructedKeys(), "Editor.DeleteLineToBeginning.", this, 1, false);
        action.setHelpContextId("org.eclipse.ui.DeleteLineToBeginning_action_context");
        action.setActionDefinitionId("org.eclipse.ui.edit.text.delete.line.to.beginning");
        this.setAction("DeleteLineToBeginning", (IAction)action);
        action = new DeleteLineAction(EditorMessages.getBundleForConstructedKeys(), "Editor.CutLineToBeginning.", this, 1, true);
        action.setHelpContextId("org.eclipse.ui.CutLineToBeginning_action_context");
        action.setActionDefinitionId("org.eclipse.ui.edit.text.cut.line.to.beginning");
        this.setAction("CutLineToBeginning", (IAction)action);
        action = new DeleteLineAction(EditorMessages.getBundleForConstructedKeys(), "Editor.DeleteLineToEnd.", this, 2, false);
        action.setHelpContextId("org.eclipse.ui.DeleteLineToEnd_action_context");
        action.setActionDefinitionId("org.eclipse.ui.edit.text.delete.line.to.end");
        this.setAction("DeleteLineToEnd", (IAction)action);
        action = new DeleteLineAction(EditorMessages.getBundleForConstructedKeys(), "Editor.CutLineToEnd.", this, 2, true);
        action.setHelpContextId("org.eclipse.ui.CutLineToEnd_action_context");
        action.setActionDefinitionId("org.eclipse.ui.edit.text.cut.line.to.end");
        this.setAction("CutLineToEnd", (IAction)action);
        action = new JoinLinesAction(EditorMessages.getBundleForConstructedKeys(), "Editor.JoinLines.", (ITextEditor)this, " ");
        action.setHelpContextId("org.eclipse.ui.JoinLines_action_context");
        action.setActionDefinitionId("org.eclipse.ui.edit.text.join.lines");
        this.setAction("JoinLines", (IAction)action);
        action = new MarkAction(EditorMessages.getBundleForConstructedKeys(), "Editor.SetMark.", this, 0);
        action.setHelpContextId("org.eclipse.ui.SetMark_action_context");
        action.setActionDefinitionId("org.eclipse.ui.edit.text.set.mark");
        this.setAction("SetMark", (IAction)action);
        action = new MarkAction(EditorMessages.getBundleForConstructedKeys(), "Editor.ClearMark.", this, 1);
        action.setHelpContextId("org.eclipse.ui.ClearMark_action_context");
        action.setActionDefinitionId("org.eclipse.ui.edit.text.clear.mark");
        this.setAction("ClearMark", (IAction)action);
        action = new MarkAction(EditorMessages.getBundleForConstructedKeys(), "Editor.SwapMark.", this, 2);
        action.setHelpContextId("org.eclipse.ui.SwapMark_action_context");
        action.setActionDefinitionId("org.eclipse.ui.edit.text.swap.mark");
        this.setAction("SwapMark", (IAction)action);
        action = new TextOperationAction(EditorMessages.getBundleForConstructedKeys(), "Editor.SelectAll.", this, 7, true);
        action.setHelpContextId(IAbstractTextEditorHelpContextIds.SELECT_ALL_ACTION);
        action.setActionDefinitionId("org.eclipse.ui.edit.selectAll");
        this.setAction(ITextEditorActionConstants.SELECT_ALL, (IAction)action);
        action = new ShiftAction(EditorMessages.getBundleForConstructedKeys(), "Editor.ShiftRight.", this, 8);
        action.setHelpContextId("org.eclipse.ui.ShiftRight_action_context");
        action.setActionDefinitionId("org.eclipse.ui.edit.text.shiftRight");
        this.setAction("ShiftRight", (IAction)action);
        action = new ShiftAction(EditorMessages.getBundleForConstructedKeys(), "Editor.ShiftRight.", this, 8){

            public void update() {
                this.updateForTab();
            }
        };
        this.setAction("ShiftRightTab", (IAction)action);
        action = new ShiftAction(EditorMessages.getBundleForConstructedKeys(), "Editor.ShiftLeft.", this, 9);
        action.setHelpContextId("org.eclipse.ui.ShiftLeft_action_context");
        action.setActionDefinitionId("org.eclipse.ui.edit.text.shiftLeft");
        this.setAction("ShiftLeft", (IAction)action);
        action = new TextOperationAction(EditorMessages.getBundleForConstructedKeys(), "Editor.Print.", this, 10, true);
        action.setHelpContextId(IAbstractTextEditorHelpContextIds.PRINT_ACTION);
        action.setActionDefinitionId("org.eclipse.ui.file.print");
        this.setAction(ITextEditorActionConstants.PRINT, (IAction)action);
        action = new FindReplaceAction(EditorMessages.getBundleForConstructedKeys(), "Editor.FindReplace.", (IWorkbenchPart)this);
        action.setHelpContextId(IAbstractTextEditorHelpContextIds.FIND_ACTION);
        action.setActionDefinitionId("org.eclipse.ui.edit.findReplace");
        this.setAction(ITextEditorActionConstants.FIND, (IAction)action);
        action = new FindNextAction(EditorMessages.getBundleForConstructedKeys(), "Editor.FindNext.", (IWorkbenchPart)this, true);
        action.setHelpContextId("org.eclipse.ui.FindNext_action_context");
        action.setActionDefinitionId("org.eclipse.ui.edit.findNext");
        this.setAction("FindNext", (IAction)action);
        action = new FindNextAction(EditorMessages.getBundleForConstructedKeys(), "Editor.FindPrevious.", (IWorkbenchPart)this, false);
        action.setHelpContextId("org.eclipse.ui.FindPrevious_action_context");
        action.setActionDefinitionId("org.eclipse.ui.edit.findPrevious");
        this.setAction("FindPrevious", (IAction)action);
        action = new IncrementalFindAction(EditorMessages.getBundleForConstructedKeys(), "Editor.FindIncremental.", (IWorkbenchPart)this, true);
        action.setHelpContextId("org.eclipse.ui.FindIncremental_action_context");
        action.setActionDefinitionId("org.eclipse.ui.edit.findIncremental");
        this.setAction("FindIncremental", (IAction)action);
        action = new IncrementalFindAction(EditorMessages.getBundleForConstructedKeys(), "Editor.FindIncrementalReverse.", (IWorkbenchPart)this, false);
        action.setHelpContextId("org.eclipse.ui.FindIncrementalReverse_action_context");
        action.setActionDefinitionId("org.eclipse.ui.edit.findIncrementalReverse");
        this.setAction("FindIncrementalReverse", (IAction)action);
        this.fSaveAction = ActionFactory.SAVE.create(this.getSite().getWorkbenchWindow());
        this.setAction(ITextEditorActionConstants.SAVE, (IAction)this.fSaveAction);
        action = new RevertToSavedAction(EditorMessages.getBundleForConstructedKeys(), "Editor.Revert.", this);
        action.setHelpContextId(IAbstractTextEditorHelpContextIds.REVERT_TO_SAVED_ACTION);
        action.setActionDefinitionId("org.eclipse.ui.file.revert");
        this.setAction(ITextEditorActionConstants.REVERT_TO_SAVED, (IAction)action);
        action = new GotoLineAction(EditorMessages.getBundleForConstructedKeys(), "Editor.GotoLine.", this);
        action.setHelpContextId("org.eclipse.ui.GotoLine_action_context");
        action.setActionDefinitionId("org.eclipse.ui.edit.text.goto.line");
        this.setAction("GotoLine", (IAction)action);
        action = new MoveLinesAction(EditorMessages.getBundleForConstructedKeys(), "Editor.MoveLinesUp.", this, (ITextViewer)this.getSourceViewer(), true, false);
        action.setHelpContextId("org.eclipse.ui.move_lines_action_context");
        action.setActionDefinitionId("org.eclipse.ui.edit.text.moveLineUp");
        this.setAction("MoveLineUp", (IAction)action);
        action = new MoveLinesAction(EditorMessages.getBundleForConstructedKeys(), "Editor.MoveLinesDown.", this, (ITextViewer)this.getSourceViewer(), false, false);
        action.setHelpContextId("org.eclipse.ui.move_lines_action_context");
        action.setActionDefinitionId("org.eclipse.ui.edit.text.moveLineDown");
        this.setAction("MoveLineDown", (IAction)action);
        action = new MoveLinesAction(EditorMessages.getBundleForConstructedKeys(), "Editor.CopyLineUp.", this, (ITextViewer)this.getSourceViewer(), true, true);
        action.setHelpContextId("org.eclipse.ui.copy_lines_action_context");
        action.setActionDefinitionId("org.eclipse.ui.edit.text.copyLineUp");
        this.setAction("CopyLineUp", (IAction)action);
        action = new MoveLinesAction(EditorMessages.getBundleForConstructedKeys(), "Editor.CopyLineDown.", this, (ITextViewer)this.getSourceViewer(), false, true);
        action.setHelpContextId("org.eclipse.ui.copy_lines_action_context");
        action.setActionDefinitionId("org.eclipse.ui.edit.text.copyLineDown");
        this.setAction("CopyLineDown", (IAction)action);
        action = new CaseAction(EditorMessages.getBundleForConstructedKeys(), "Editor.UpperCase.", this, true);
        action.setHelpContextId("org.eclipse.ui.upper_case_action_context");
        action.setActionDefinitionId("org.eclipse.ui.edit.text.upperCase");
        this.setAction("UpperCase", (IAction)action);
        action = new CaseAction(EditorMessages.getBundleForConstructedKeys(), "Editor.LowerCase.", this, false);
        action.setHelpContextId("org.eclipse.ui.lower_case_action_context");
        action.setActionDefinitionId("org.eclipse.ui.edit.text.lowerCase");
        this.setAction("LowerCase", (IAction)action);
        action = new InsertLineAction(EditorMessages.getBundleForConstructedKeys(), "Editor.SmartEnter.", (ITextEditor)this, false);
        action.setHelpContextId("org.eclipse.ui.smart_enter_action_context");
        action.setActionDefinitionId("org.eclipse.ui.edit.text.smartEnter");
        this.setAction("SmartEnter", (IAction)action);
        action = new InsertLineAction(EditorMessages.getBundleForConstructedKeys(), "Editor.SmartEnterInverse.", (ITextEditor)this, true);
        action.setHelpContextId("org.eclipse.ui.smart_enter_action_context");
        action.setActionDefinitionId("org.eclipse.ui.edit.text.smartEnterInverse");
        this.setAction("SmartEnterInverse", (IAction)action);
        action = new ToggleInsertModeAction(EditorMessages.getBundleForConstructedKeys(), "Editor.ToggleInsertMode.");
        action.setHelpContextId("org.eclipse.ui.toggle_insert_mode_action_context");
        action.setActionDefinitionId("org.eclipse.ui.edit.text.toggleInsertMode");
        this.setAction("TOGGLE_INSERT_MODE", (IAction)action);
        action = new HippieCompleteAction(EditorMessages.getBundleForConstructedKeys(), "Editor.HippieCompletion.", this);
        action.setHelpContextId("org.eclipse.ui.hippie_completion_action_context");
        action.setActionDefinitionId("org.eclipse.ui.edit.text.hippieCompletion");
        this.setAction("HIPPIE_COMPLETION", (IAction)action);
        action = new ContentAssistAction(EditorMessages.getBundleForConstructedKeys(), "Editor.ContentAssistProposal.", this);
        action.setHelpContextId("org.eclipse.ui.content_assist_action_context");
        action.setActionDefinitionId("org.eclipse.ui.edit.text.contentAssist.proposals");
        this.setAction("ContentAssistProposal", (IAction)action);
        this.markAsStateDependentAction("ContentAssistProposal", true);
        action = new TextOperationAction(EditorMessages.getBundleForConstructedKeys(), "Editor.ContentAssistContextInformation.", this, 14);
        action.setHelpContextId("org.eclipse.ui.content_assist_context_information_action_context");
        action.setActionDefinitionId("org.eclipse.ui.edit.text.contentAssist.contextInformation");
        this.setAction("ContentAssistContextInformation", (IAction)action);
        this.markAsStateDependentAction("ContentAssistContextInformation", true);
        action = new TextOperationAction(EditorMessages.getBundleForConstructedKeys(), "Editor.QuickAssist.", this, 22);
        action.setHelpContextId("org.eclipse.ui.quick_assist_action_context");
        action.setActionDefinitionId("org.eclipse.jdt.ui.edit.text.java.correction.assist.proposals");
        this.setAction("QuickAssist", (IAction)action);
        this.markAsStateDependentAction("QuickAssist", true);
        action = new GotoAnnotationAction(this, true);
        this.setAction(ITextEditorActionConstants.NEXT, (IAction)action);
        action = new GotoAnnotationAction(this, false);
        this.setAction(ITextEditorActionConstants.PREVIOUS, (IAction)action);
        action = new RecenterAction(EditorMessages.getBundleForConstructedKeys(), "Editor.Recenter.", this);
        action.setHelpContextId("org.eclipse.ui.recenter_action_context");
        action.setActionDefinitionId("org.eclipse.ui.edit.text.recenter");
        this.setAction("Recenter", (IAction)action);
        action = new ShowWhitespaceCharactersAction(EditorMessages.getBundleForConstructedKeys(), "Editor.ShowWhitespaceCharacters.", (ITextEditor)this, this.getPreferenceStore());
        action.setHelpContextId("org.eclipse.ui.show_whitepsace_characters_action_context");
        action.setActionDefinitionId("org.eclipse.ui.edit.text.toggleShowWhitespaceCharacters");
        this.setAction("ShowWhitespaceCharacters", (IAction)action);
        action = new TextOperationAction(EditorMessages.getBundleForConstructedKeys(), "Editor.ShowInformation.", this, 16, true);
        action = new InformationDispatchAction(EditorMessages.getBundleForConstructedKeys(), "Editor.ShowInformation.", (TextOperationAction)action);
        action.setHelpContextId("org.eclipse.ui.show_information_action_context");
        action.setActionDefinitionId("org.eclipse.ui.edit.text.showInformation");
        this.setAction("ShowInformation", (IAction)action);
        action = new BlockSelectionModeToggleAction(EditorMessages.getBundleForConstructedKeys(), "Editor.ToggleBlockSelectionMode.", this);
        action.setHelpContextId("org.eclipse.ui.block_selection_mode_action_context");
        action.setActionDefinitionId("org.eclipse.ui.edit.text.toggleBlockSelectionMode");
        this.setAction("BlockSelectionMode", (IAction)action);
        action = new TextOperationAction(EditorMessages.getBundleForConstructedKeys(), "Editor.OpenHyperlink.", this, 23, true);
        action.setHelpContextId("org.eclipse.ui.open_hyperlink_action_context");
        action.setActionDefinitionId("org.eclipse.ui.edit.text.open.hyperlink");
        this.setAction("OpenHyperlink", (IAction)action);
        PropertyDialogAction openProperties = new PropertyDialogAction(new IShellProvider(){

            public Shell getShell() {
                return AbstractTextEditor.this.getSite().getShell();
            }
        }, new ISelectionProvider(){

            public void addSelectionChangedListener(ISelectionChangedListener listener) {
            }

            public ISelection getSelection() {
                return new StructuredSelection((Object)AbstractTextEditor.this.getEditorInput());
            }

            public void removeSelectionChangedListener(ISelectionChangedListener listener) {
            }

            public void setSelection(ISelection selection) {
            }
        });
        openProperties.setActionDefinitionId("org.eclipse.ui.file.properties");
        this.setAction(ITextEditorActionConstants.PROPERTIES, (IAction)openProperties);
        this.markAsContentDependentAction(ITextEditorActionConstants.UNDO, true);
        this.markAsContentDependentAction(ITextEditorActionConstants.REDO, true);
        this.markAsContentDependentAction(ITextEditorActionConstants.FIND, true);
        this.markAsContentDependentAction("FindNext", true);
        this.markAsContentDependentAction("FindPrevious", true);
        this.markAsContentDependentAction("FindIncremental", true);
        this.markAsContentDependentAction("FindIncrementalReverse", true);
        this.markAsSelectionDependentAction(ITextEditorActionConstants.CUT, true);
        this.markAsSelectionDependentAction(ITextEditorActionConstants.COPY, true);
        this.markAsSelectionDependentAction(ITextEditorActionConstants.PASTE, true);
        this.markAsSelectionDependentAction(ITextEditorActionConstants.DELETE, true);
        this.markAsSelectionDependentAction("ShiftRight", true);
        this.markAsSelectionDependentAction("ShiftRightTab", true);
        this.markAsSelectionDependentAction("UpperCase", true);
        this.markAsSelectionDependentAction("LowerCase", true);
        this.markAsPropertyDependentAction(ITextEditorActionConstants.UNDO, true);
        this.markAsPropertyDependentAction(ITextEditorActionConstants.REDO, true);
        this.markAsPropertyDependentAction(ITextEditorActionConstants.REVERT_TO_SAVED, true);
        this.markAsPropertyDependentAction(ITextEditorActionConstants.SAVE, true);
        this.markAsStateDependentAction(ITextEditorActionConstants.UNDO, true);
        this.markAsStateDependentAction(ITextEditorActionConstants.REDO, true);
        this.markAsStateDependentAction(ITextEditorActionConstants.CUT, true);
        this.markAsStateDependentAction(ITextEditorActionConstants.PASTE, true);
        this.markAsStateDependentAction(ITextEditorActionConstants.DELETE, true);
        this.markAsStateDependentAction("ShiftRight", true);
        this.markAsStateDependentAction("ShiftRightTab", true);
        this.markAsStateDependentAction("ShiftLeft", true);
        this.markAsStateDependentAction(ITextEditorActionConstants.FIND, true);
        this.markAsStateDependentAction("DeleteLine", true);
        this.markAsStateDependentAction("DeleteLineToBeginning", true);
        this.markAsStateDependentAction("DeleteLineToEnd", true);
        this.markAsStateDependentAction("MoveLineUp", true);
        this.markAsStateDependentAction("MoveLineDown", true);
        this.markAsStateDependentAction("CutLine", true);
        this.markAsStateDependentAction("CutLineToBeginning", true);
        this.markAsStateDependentAction("CutLineToEnd", true);
        this.setActionActivationCode("ShiftRightTab", '\t', -1, 0);
        this.setActionActivationCode("ShiftLeft", '\t', -1, 131072);
    }

    protected final void addAction(IMenuManager menu, String actionId) {
        IAction action = this.getAction(actionId);
        if (action != null) {
            if (action instanceof IUpdate) {
                ((IUpdate)action).update();
            }
            menu.add(action);
        }
    }

    protected final void addAction(IMenuManager menu, String group, String actionId) {
        IAction action = this.getAction(actionId);
        if (action != null) {
            IMenuManager subMenu;
            if (action instanceof IUpdate) {
                ((IUpdate)action).update();
            }
            if ((subMenu = menu.findMenuUsingPath(group)) != null) {
                subMenu.add(action);
            } else {
                menu.appendToGroup(group, action);
            }
        }
    }

    protected final void addGroup(IMenuManager menu, String existingGroup, String newGroup) {
        IMenuManager subMenu = menu.findMenuUsingPath(existingGroup);
        if (subMenu != null) {
            subMenu.add((IContributionItem)new Separator(newGroup));
        } else {
            menu.appendToGroup(existingGroup, (IContributionItem)new Separator(newGroup));
        }
    }

    protected void rulerContextMenuAboutToShow(IMenuManager menu) {
        menu.add((IContributionItem)new Separator("group.rest"));
        menu.add((IContributionItem)new Separator("additions"));
        Iterator i = this.fRulerContextMenuListeners.iterator();
        while (i.hasNext()) {
            ((IMenuListener)i.next()).menuAboutToShow(menu);
        }
        this.addAction(menu, "ManageBookmarks");
        this.addAction(menu, "ManageTasks");
    }

    protected void editorContextMenuAboutToShow(IMenuManager menu) {
        menu.add((IContributionItem)new Separator("group.undo"));
        menu.add((IContributionItem)new GroupMarker("group.save"));
        menu.add((IContributionItem)new Separator("group.copy"));
        menu.add((IContributionItem)new Separator("group.print"));
        menu.add((IContributionItem)new Separator("group.edit"));
        menu.add((IContributionItem)new Separator("group.find"));
        menu.add((IContributionItem)new Separator("group.add"));
        menu.add((IContributionItem)new Separator("group.rest"));
        menu.add((IContributionItem)new Separator("additions"));
        if (this.isEditable()) {
            this.addAction(menu, "group.undo", ITextEditorActionConstants.UNDO);
            this.addAction(menu, "group.undo", ITextEditorActionConstants.REVERT_TO_SAVED);
            this.addAction(menu, "group.save", ITextEditorActionConstants.SAVE);
            this.addAction(menu, "group.copy", ITextEditorActionConstants.CUT);
            this.addAction(menu, "group.copy", ITextEditorActionConstants.COPY);
            this.addAction(menu, "group.copy", ITextEditorActionConstants.PASTE);
            IAction action = this.getAction("QuickAssist");
            if (action != null && action.isEnabled()) {
                this.addAction(menu, "group.edit", "QuickAssist");
            }
        } else {
            this.addAction(menu, "group.copy", ITextEditorActionConstants.COPY);
        }
    }

    protected IStatusLineManager getStatusLineManager() {
        return this.getEditorSite().getActionBars().getStatusLineManager();
    }

    public Object getAdapter(Class required) {
        Class<?> clazz = class$9;
        if (clazz == null) {
            try {
                clazz = class$9 = Class.forName("org.eclipse.ui.texteditor.IEditorStatusLine");
            }
            catch (ClassNotFoundException classNotFoundException) {
                throw new NoClassDefFoundError(classNotFoundException.getMessage());
            }
        }
        if (clazz.equals(required)) {
            if (this.fEditorStatusLine == null) {
                IStatusLineManager statusLineManager = this.getStatusLineManager();
                ISelectionProvider selectionProvider = this.getSelectionProvider();
                if (statusLineManager != null && selectionProvider != null) {
                    this.fEditorStatusLine = new EditorStatusLine(statusLineManager, selectionProvider);
                }
            }
            return this.fEditorStatusLine;
        }
        Class<?> clazz2 = class$1;
        if (clazz2 == null) {
            try {
                clazz2 = class$1 = Class.forName("org.eclipse.jface.text.source.IVerticalRulerInfo");
            }
            catch (ClassNotFoundException classNotFoundException) {
                throw new NoClassDefFoundError(classNotFoundException.getMessage());
            }
        }
        if (clazz2.equals(required) && this.fVerticalRuler != null) {
            return this.fVerticalRuler;
        }
        Class<?> clazz3 = class$10;
        if (clazz3 == null) {
            try {
                clazz3 = class$10 = Class.forName("org.eclipse.jface.text.IMarkRegionTarget");
            }
            catch (ClassNotFoundException classNotFoundException) {
                throw new NoClassDefFoundError(classNotFoundException.getMessage());
            }
        }
        if (clazz3.equals(required)) {
            IStatusLineManager manager;
            if (this.fMarkRegionTarget == null && (manager = this.getStatusLineManager()) != null) {
                this.fMarkRegionTarget = this.fSourceViewer == null ? null : new MarkRegionTarget((ITextViewer)this.fSourceViewer, manager);
            }
            return this.fMarkRegionTarget;
        }
        Class<?> clazz4 = class$11;
        if (clazz4 == null) {
            try {
                clazz4 = class$11 = Class.forName("org.eclipse.ui.texteditor.IDeleteLineTarget");
            }
            catch (ClassNotFoundException classNotFoundException) {
                throw new NoClassDefFoundError(classNotFoundException.getMessage());
            }
        }
        if (clazz4.equals(required)) {
            if (this.fDeleteLineTarget == null) {
                this.fDeleteLineTarget = new TextViewerDeleteLineTarget((ITextViewer)this.fSourceViewer);
            }
            return this.fDeleteLineTarget;
        }
        Class<?> clazz5 = class$12;
        if (clazz5 == null) {
            try {
                clazz5 = class$12 = Class.forName("org.eclipse.ui.texteditor.IncrementalFindTarget");
            }
            catch (ClassNotFoundException classNotFoundException) {
                throw new NoClassDefFoundError(classNotFoundException.getMessage());
            }
        }
        if (clazz5.equals(required)) {
            IStatusLineManager manager;
            if (this.fIncrementalFindTarget == null && (manager = this.getStatusLineManager()) != null) {
                this.fIncrementalFindTarget = this.fSourceViewer == null ? null : new IncrementalFindTarget((ITextViewer)this.fSourceViewer, manager);
            }
            return this.fIncrementalFindTarget;
        }
        Class<?> clazz6 = class$13;
        if (clazz6 == null) {
            try {
                clazz6 = class$13 = Class.forName("org.eclipse.jface.text.IFindReplaceTarget");
            }
            catch (ClassNotFoundException classNotFoundException) {
                throw new NoClassDefFoundError(classNotFoundException.getMessage());
            }
        }
        if (clazz6.equals(required)) {
            if (this.fFindReplaceTarget == null) {
                IFindReplaceTarget target;
                IFindReplaceTarget iFindReplaceTarget = target = this.fSourceViewer == null ? null : this.fSourceViewer.getFindReplaceTarget();
                if (target != null) {
                    this.fFindReplaceTarget = new FindReplaceTarget(this, target);
                    if (this.fFindScopeHighlightColor != null) {
                        this.fFindReplaceTarget.setScopeHighlightColor(this.fFindScopeHighlightColor);
                    }
                }
            }
            return this.fFindReplaceTarget;
        }
        Class<?> clazz7 = class$14;
        if (clazz7 == null) {
            try {
                clazz7 = class$14 = Class.forName("org.eclipse.jface.text.ITextOperationTarget");
            }
            catch (ClassNotFoundException classNotFoundException) {
                throw new NoClassDefFoundError(classNotFoundException.getMessage());
            }
        }
        if (clazz7.equals(required)) {
            return this.fSourceViewer == null ? null : this.fSourceViewer.getTextOperationTarget();
        }
        Class<?> clazz8 = class$6;
        if (clazz8 == null) {
            try {
                clazz8 = class$6 = Class.forName("org.eclipse.jface.text.IRewriteTarget");
            }
            catch (ClassNotFoundException classNotFoundException) {
                throw new NoClassDefFoundError(classNotFoundException.getMessage());
            }
        }
        if (clazz8.equals(required)) {
            if (this.fSourceViewer instanceof ITextViewerExtension) {
                ITextViewerExtension extension = (ITextViewerExtension)this.fSourceViewer;
                return extension.getRewriteTarget();
            }
            return null;
        }
        Class<?> clazz9 = class$15;
        if (clazz9 == null) {
            try {
                clazz9 = class$15 = Class.forName("org.eclipse.swt.widgets.Control");
            }
            catch (ClassNotFoundException classNotFoundException) {
                throw new NoClassDefFoundError(classNotFoundException.getMessage());
            }
        }
        if (clazz9.equals(required)) {
            return this.fSourceViewer != null ? this.fSourceViewer.getTextWidget() : null;
        }
        Class<?> clazz10 = class$3;
        if (clazz10 == null) {
            try {
                clazz10 = class$3 = Class.forName("org.eclipse.ui.texteditor.rulers.IColumnSupport");
            }
            catch (ClassNotFoundException classNotFoundException) {
                throw new NoClassDefFoundError(classNotFoundException.getMessage());
            }
        }
        if (clazz10.equals(required)) {
            if (this.fColumnSupport == null) {
                this.fColumnSupport = this.createColumnSupport();
            }
            return this.fColumnSupport;
        }
        return super.getAdapter(required);
    }

    public void setFocus() {
        if (this.fSourceViewer != null && this.fSourceViewer.getTextWidget() != null) {
            this.fSourceViewer.getTextWidget().setFocus();
        }
    }

    public boolean showsHighlightRangeOnly() {
        return this.fShowHighlightRangeOnly;
    }

    public void showHighlightRangeOnly(boolean showHighlightRangeOnly) {
        this.fShowHighlightRangeOnly = showHighlightRangeOnly;
    }

    public void setHighlightRange(int offset, int length, boolean moveCursor) {
        if (this.fSourceViewer == null) {
            return;
        }
        if (this.fShowHighlightRangeOnly) {
            if (moveCursor) {
                this.fSourceViewer.setVisibleRegion(offset, length);
            }
        } else {
            IRegion rangeIndication = this.fSourceViewer.getRangeIndication();
            if (rangeIndication == null || offset != rangeIndication.getOffset() || length != rangeIndication.getLength()) {
                this.fSourceViewer.setRangeIndication(offset, length, moveCursor);
            }
        }
    }

    public IRegion getHighlightRange() {
        if (this.fSourceViewer == null) {
            return null;
        }
        if (this.fShowHighlightRangeOnly) {
            return AbstractTextEditor.getCoverage(this.fSourceViewer);
        }
        return this.fSourceViewer.getRangeIndication();
    }

    public void resetHighlightRange() {
        if (this.fSourceViewer == null) {
            return;
        }
        if (this.fShowHighlightRangeOnly) {
            this.fSourceViewer.resetVisibleRegion();
        } else {
            this.fSourceViewer.removeRangeIndication();
        }
    }

    protected void adjustHighlightRange(int offset, int length) {
        if (this.fSourceViewer == null) {
            return;
        }
        if (this.fSourceViewer instanceof ITextViewerExtension5) {
            ITextViewerExtension5 extension = (ITextViewerExtension5)this.fSourceViewer;
            extension.exposeModelRange((IRegion)new Region(offset, length));
        } else if (!AbstractTextEditor.isVisible(this.fSourceViewer, offset, length)) {
            this.fSourceViewer.resetVisibleRegion();
        }
    }

    public void selectAndReveal(int start, int length) {
        this.selectAndReveal(start, length, start, length);
    }

    protected void selectAndReveal(int selectionStart, int selectionLength, int revealStart, int revealLength) {
        ITextSelection textSelection;
        if (this.fSourceViewer == null) {
            return;
        }
        ISelection selection = this.getSelectionProvider().getSelection();
        if (selection instanceof ITextSelection && ((textSelection = (ITextSelection)selection).getOffset() != 0 || textSelection.getLength() != 0)) {
            this.markInNavigationHistory();
        }
        StyledText widget = this.fSourceViewer.getTextWidget();
        widget.setRedraw(false);
        this.adjustHighlightRange(revealStart, revealLength);
        this.fSourceViewer.revealRange(revealStart, revealLength);
        this.fSourceViewer.setSelectedRange(selectionStart, selectionLength);
        this.markInNavigationHistory();
        widget.setRedraw(true);
    }

    public INavigationLocation createEmptyNavigationLocation() {
        return new TextSelectionNavigationLocation(this, false);
    }

    public INavigationLocation createNavigationLocation() {
        return new TextSelectionNavigationLocation(this, true);
    }

    protected void markInNavigationHistory() {
        this.getSite().getPage().getNavigationHistory().markLocation((IEditorPart)this);
    }

    protected void editorSaved() {
        INavigationLocation[] locations = this.getSite().getPage().getNavigationHistory().getLocations();
        IEditorInput input = this.getEditorInput();
        int i = 0;
        while (i < locations.length) {
            if (locations[i] instanceof TextSelectionNavigationLocation && input.equals(locations[i].getInput())) {
                TextSelectionNavigationLocation location = (TextSelectionNavigationLocation)locations[i];
                location.partSaved(this);
            }
            ++i;
        }
    }

    protected void firePropertyChange(int property) {
        super.firePropertyChange(property);
        this.updatePropertyDependentActions();
    }

    public void setStatusField(IStatusField field, String category) {
        Assert.isNotNull((Object)category);
        if (field != null) {
            if (this.fStatusFields == null) {
                this.fStatusFields = new HashMap(3);
            }
            this.fStatusFields.put(category, field);
            this.updateStatusField(category);
        } else if (this.fStatusFields != null) {
            this.fStatusFields.remove(category);
        }
        if (this.fIncrementalFindTarget != null && "findField".equals(category)) {
            this.fIncrementalFindTarget.setStatusField(field);
        }
    }

    protected IStatusField getStatusField(String category) {
        if (category != null && this.fStatusFields != null) {
            return (IStatusField)this.fStatusFields.get(category);
        }
        return null;
    }

    protected boolean isInInsertMode() {
        return !this.fIsOverwriting;
    }

    public ITextEditorExtension3.InsertMode getInsertMode() {
        return this.fInsertMode;
    }

    public void setInsertMode(ITextEditorExtension3.InsertMode newMode) {
        List legalModes = this.getLegalInsertModes();
        if (!legalModes.contains(newMode)) {
            throw new IllegalArgumentException();
        }
        this.fInsertMode = newMode;
        this.handleInsertModeChanged();
    }

    protected List getLegalInsertModes() {
        if (this.fLegalInsertModes == null) {
            this.fLegalInsertModes = new ArrayList();
            this.fLegalInsertModes.add(SMART_INSERT);
            this.fLegalInsertModes.add(INSERT);
        }
        return this.fLegalInsertModes;
    }

    private void switchToNextInsertMode() {
        ITextEditorExtension3.InsertMode mode = this.getInsertMode();
        List legalModes = this.getLegalInsertModes();
        int i = 0;
        while (i < legalModes.size()) {
            if (legalModes.get(i) == mode) break;
            ++i;
        }
        i = (i + 1) % legalModes.size();
        ITextEditorExtension3.InsertMode newMode = (ITextEditorExtension3.InsertMode)legalModes.get(i);
        this.setInsertMode(newMode);
    }

    private void toggleOverwriteMode() {
        if (this.fIsOverwriteModeEnabled) {
            this.fIsOverwriting = !this.fIsOverwriting;
            this.fSourceViewer.getTextWidget().invokeAction(0x1000009);
            this.handleInsertModeChanged();
        }
    }

    protected void configureInsertMode(ITextEditorExtension3.InsertMode mode, boolean legal) {
        List legalModes = this.getLegalInsertModes();
        if (legal) {
            if (!legalModes.contains(mode)) {
                legalModes.add(mode);
            }
        } else if (legalModes.size() > 1) {
            if (this.getInsertMode() == mode) {
                this.switchToNextInsertMode();
            }
            legalModes.remove(mode);
        }
    }

    protected void enableOverwriteMode(boolean enable) {
        if (this.fIsOverwriting && !enable) {
            this.toggleOverwriteMode();
        }
        this.fIsOverwriteModeEnabled = enable;
    }

    private Caret createOverwriteCaret(StyledText styledText) {
        Caret caret = new Caret((Canvas)styledText, 0);
        GC gc = new GC((Drawable)styledText);
        Point charSize = gc.stringExtent("a");
        caret.setSize(charSize.x, styledText.getLineHeight());
        caret.setFont(styledText.getFont());
        gc.dispose();
        return caret;
    }

    private Caret createInsertCaret(StyledText styledText) {
        Caret caret = new Caret((Canvas)styledText, 0);
        caret.setSize(this.getCaretWidthPreference(), styledText.getLineHeight());
        caret.setFont(styledText.getFont());
        return caret;
    }

    private Image createRawInsertModeCaretImage(StyledText styledText) {
        PaletteData caretPalette = new PaletteData(new RGB[]{new RGB(0, 0, 0), new RGB(255, 255, 255)});
        int width = this.getCaretWidthPreference();
        int widthOffset = width - 1;
        ImageData imageData = new ImageData(4 + widthOffset, styledText.getLineHeight(), 1, caretPalette);
        Display display = styledText.getDisplay();
        Image bracketImage = new Image((Device)display, imageData);
        GC gc = new GC((Drawable)bracketImage);
        gc.setForeground(display.getSystemColor(1));
        gc.setLineWidth(0);
        int height = imageData.height / 3;
        int i = 0;
        while (i < width) {
            gc.drawLine(i, 0, i, height - 1);
            gc.drawLine(i, imageData.height - height, i, imageData.height - 1);
            ++i;
        }
        gc.dispose();
        return bracketImage;
    }

    private Caret createRawInsertModeCaret(StyledText styledText) {
        if (!this.getLegalInsertModes().contains(SMART_INSERT)) {
            return this.createInsertCaret(styledText);
        }
        Caret caret = new Caret((Canvas)styledText, 0);
        Image image = this.createRawInsertModeCaretImage(styledText);
        if (image != null) {
            caret.setImage(image);
        } else {
            caret.setSize(this.getCaretWidthPreference(), styledText.getLineHeight());
        }
        caret.setFont(styledText.getFont());
        return caret;
    }

    private int getCaretWidthPreference() {
        if (this.getPreferenceStore() != null && this.getPreferenceStore().getBoolean(PREFERENCE_WIDE_CARET)) {
            return 2;
        }
        return 1;
    }

    private void updateCaret() {
        if (this.fSourceViewer == null) {
            return;
        }
        StyledText styledText = this.fSourceViewer.getTextWidget();
        ITextEditorExtension3.InsertMode mode = this.getInsertMode();
        styledText.setCaret(null);
        this.disposeNonDefaultCaret();
        if (this.getPreferenceStore() == null || !this.getPreferenceStore().getBoolean(PREFERENCE_USE_CUSTOM_CARETS)) {
            Assert.isTrue((this.fNonDefaultCaret == null ? 1 : 0) != 0);
        } else if (this.fIsOverwriting) {
            this.fNonDefaultCaret = this.createOverwriteCaret(styledText);
        } else if (SMART_INSERT == mode) {
            this.fNonDefaultCaret = this.createInsertCaret(styledText);
        } else if (INSERT == mode) {
            this.fNonDefaultCaret = this.createRawInsertModeCaret(styledText);
        }
        if (this.fNonDefaultCaret != null) {
            styledText.setCaret(this.fNonDefaultCaret);
            this.fNonDefaultCaretImage = this.fNonDefaultCaret.getImage();
        } else if (this.fInitialCaret != styledText.getCaret()) {
            styledText.setCaret(this.fInitialCaret);
        }
    }

    private void disposeNonDefaultCaret() {
        if (this.fNonDefaultCaretImage != null) {
            this.fNonDefaultCaretImage.dispose();
            this.fNonDefaultCaretImage = null;
        }
        if (this.fNonDefaultCaret != null) {
            this.fNonDefaultCaret.dispose();
            this.fNonDefaultCaret = null;
        }
    }

    protected void handleInsertModeChanged() {
        this.updateInsertModeAction();
        this.updateCaret();
        this.updateStatusField("InputMode");
    }

    private void updateInsertModeAction() {
        if (this.getSite() == null) {
            return;
        }
        IAction action = this.getAction("TOGGLE_INSERT_MODE");
        if (action != null) {
            action.setEnabled(!this.fIsOverwriting);
            action.setChecked(this.fInsertMode == SMART_INSERT);
        }
    }

    protected void handleCursorPositionChanged() {
        this.updateStatusField("InputPosition");
    }

    protected void updateStatusField(String category) {
        if (category == null) {
            return;
        }
        IStatusField field = this.getStatusField(category);
        if (field != null) {
            String text = null;
            if ("InputPosition".equals(category)) {
                text = this.getCursorPosition();
            } else if ("ElementState".equals(category)) {
                text = this.isEditorInputReadOnly() ? this.fReadOnlyLabel : this.fWritableLabel;
            } else if ("InputMode".equals(category)) {
                ITextEditorExtension3.InsertMode mode = this.getInsertMode();
                if (this.fIsOverwriting) {
                    text = this.fOverwriteModeLabel;
                } else if (INSERT == mode) {
                    text = this.fInsertModeLabel;
                } else if (SMART_INSERT == mode) {
                    text = this.fSmartInsertModeLabel;
                }
            }
            field.setText(text == null ? this.fErrorLabel : text);
        }
    }

    protected void updateStatusFields() {
        if (this.fStatusFields != null) {
            Iterator e = this.fStatusFields.keySet().iterator();
            while (e.hasNext()) {
                this.updateStatusField((String)e.next());
            }
        }
    }

    protected String getCursorPosition() {
        if (this.fSourceViewer == null) {
            return this.fErrorLabel;
        }
        StyledText styledText = this.fSourceViewer.getTextWidget();
        int caret = AbstractTextEditor.widgetOffset2ModelOffset(this.fSourceViewer, styledText.getCaretOffset());
        IDocument document = this.fSourceViewer.getDocument();
        if (document == null) {
            return this.fErrorLabel;
        }
        try {
            int line = document.getLineOfOffset(caret);
            int lineOffset = document.getLineOffset(line);
            int tabWidth = styledText.getTabs();
            int column = 0;
            int i = lineOffset;
            while (i < caret) {
                column = '\t' == document.getChar(i) ? (column += tabWidth - (tabWidth == 0 ? 0 : column % tabWidth)) : ++column;
                ++i;
            }
            this.fLineLabel.fValue = line + 1;
            this.fColumnLabel.fValue = column + 1;
            return NLSUtility.format(this.fPositionLabelPattern, this.fPositionLabelPatternArguments);
        }
        catch (BadLocationException badLocationException) {
            return this.fErrorLabel;
        }
    }

    public boolean isEditorInputReadOnly() {
        IDocumentProvider provider = this.getDocumentProvider();
        if (provider instanceof IDocumentProviderExtension) {
            IDocumentProviderExtension extension = (IDocumentProviderExtension)((Object)provider);
            return extension.isReadOnly(this.getEditorInput());
        }
        return true;
    }

    public boolean isEditorInputModifiable() {
        IDocumentProvider provider = this.getDocumentProvider();
        if (provider instanceof IDocumentProviderExtension) {
            IDocumentProviderExtension extension = (IDocumentProviderExtension)((Object)provider);
            return extension.isModifiable(this.getEditorInput());
        }
        return true;
    }

    public void addRulerContextMenuListener(IMenuListener listener) {
        this.fRulerContextMenuListeners.add(listener);
    }

    public void removeRulerContextMenuListener(IMenuListener listener) {
        this.fRulerContextMenuListeners.remove(listener);
    }

    protected boolean canHandleMove(IEditorInput originalElement, IEditorInput movedElement) {
        return true;
    }

    protected static final int widgetOffset2ModelOffset(ISourceViewer viewer, int widgetOffset) {
        if (viewer instanceof ITextViewerExtension5) {
            ITextViewerExtension5 extension = (ITextViewerExtension5)viewer;
            return extension.widgetOffset2ModelOffset(widgetOffset);
        }
        return widgetOffset + viewer.getVisibleRegion().getOffset();
    }

    protected static final int modelOffset2WidgetOffset(ISourceViewer viewer, int modelOffset) {
        if (viewer instanceof ITextViewerExtension5) {
            ITextViewerExtension5 extension = (ITextViewerExtension5)viewer;
            return extension.modelOffset2WidgetOffset(modelOffset);
        }
        return modelOffset - viewer.getVisibleRegion().getOffset();
    }

    protected static final IRegion getCoverage(ISourceViewer viewer) {
        if (viewer instanceof ITextViewerExtension5) {
            ITextViewerExtension5 extension = (ITextViewerExtension5)viewer;
            return extension.getModelCoverage();
        }
        return viewer.getVisibleRegion();
    }

    protected static final boolean isVisible(ISourceViewer viewer, int offset, int length) {
        if (viewer instanceof ITextViewerExtension5) {
            ITextViewerExtension5 extension = (ITextViewerExtension5)viewer;
            IRegion overlap = extension.modelRange2WidgetRange((IRegion)new Region(offset, length));
            return overlap != null;
        }
        return viewer.overlapsWithVisibleRegion(offset, length);
    }

    public void showChangeInformation(boolean show) {
    }

    public boolean isChangeInformationShowing() {
        return false;
    }

    protected void setStatusLineErrorMessage(String message) {
        IEditorStatusLine statusLine;
        Class<?> clazz = class$9;
        if (clazz == null) {
            try {
                clazz = class$9 = Class.forName("org.eclipse.ui.texteditor.IEditorStatusLine");
            }
            catch (ClassNotFoundException classNotFoundException) {
                throw new NoClassDefFoundError(classNotFoundException.getMessage());
            }
        }
        if ((statusLine = (IEditorStatusLine)this.getAdapter(clazz)) != null) {
            statusLine.setMessage(true, message, null);
        }
    }

    protected void setStatusLineMessage(String message) {
        IEditorStatusLine statusLine;
        Class<?> clazz = class$9;
        if (clazz == null) {
            try {
                clazz = class$9 = Class.forName("org.eclipse.ui.texteditor.IEditorStatusLine");
            }
            catch (ClassNotFoundException classNotFoundException) {
                throw new NoClassDefFoundError(classNotFoundException.getMessage());
            }
        }
        if ((statusLine = (IEditorStatusLine)this.getAdapter(clazz)) != null) {
            statusLine.setMessage(false, message, null);
        }
    }

    public Annotation gotoAnnotation(boolean forward) {
        ITextSelection selection = (ITextSelection)this.getSelectionProvider().getSelection();
        Position position = new Position(0, 0);
        Annotation annotation = this.findAnnotation(selection.getOffset(), selection.getLength(), forward, position);
        this.setStatusLineErrorMessage(null);
        this.setStatusLineMessage(null);
        if (annotation != null) {
            this.selectAndReveal(position.getOffset(), position.getLength());
            this.setStatusLineMessage(annotation.getText());
        }
        return annotation;
    }

    protected Annotation findAnnotation(int offset, int length, boolean forward, Position annotationPosition) {
        Annotation nextAnnotation = null;
        Position nextAnnotationPosition = null;
        Annotation containingAnnotation = null;
        Position containingAnnotationPosition = null;
        boolean currentAnnotation = false;
        IDocument document = this.getDocumentProvider().getDocument(this.getEditorInput());
        int endOfDocument = document.getLength();
        int distance = Integer.MAX_VALUE;
        IAnnotationModel model = this.getDocumentProvider().getAnnotationModel(this.getEditorInput());
        Iterator e = model.getAnnotationIterator();
        while (e.hasNext()) {
            Position p;
            Annotation a = (Annotation)e.next();
            if (!this.isNavigationTarget(a) || (p = model.getPosition(a)) == null) continue;
            if (forward && p.offset == offset || !forward && p.offset + p.getLength() == offset + length) {
                if (containingAnnotation != null && (!forward || p.length < containingAnnotationPosition.length) && (forward || p.length < containingAnnotationPosition.length)) continue;
                containingAnnotation = a;
                containingAnnotationPosition = p;
                currentAnnotation = p.length == length;
                continue;
            }
            int currentDistance = 0;
            if (forward) {
                currentDistance = p.getOffset() - offset;
                if (currentDistance < 0) {
                    currentDistance = endOfDocument + currentDistance;
                }
                if (currentDistance >= distance && (currentDistance != distance || p.length >= nextAnnotationPosition.length)) continue;
                distance = currentDistance;
                nextAnnotation = a;
                nextAnnotationPosition = p;
                continue;
            }
            currentDistance = offset + length - (p.getOffset() + p.length);
            if (currentDistance < 0) {
                currentDistance = endOfDocument + currentDistance;
            }
            if (currentDistance >= distance && (currentDistance != distance || p.length >= nextAnnotationPosition.length)) continue;
            distance = currentDistance;
            nextAnnotation = a;
            nextAnnotationPosition = p;
        }
        if (!(containingAnnotationPosition == null || currentAnnotation && nextAnnotation != null)) {
            annotationPosition.setOffset(containingAnnotationPosition.getOffset());
            annotationPosition.setLength(containingAnnotationPosition.getLength());
            return containingAnnotation;
        }
        if (nextAnnotationPosition != null) {
            annotationPosition.setOffset(nextAnnotationPosition.getOffset());
            annotationPosition.setLength(nextAnnotationPosition.getLength());
        }
        return nextAnnotation;
    }

    protected boolean isNavigationTarget(Annotation annotation) {
        return true;
    }

    public void showRevisionInformation(RevisionInformation info, String quickDiffProviderId) {
    }

    public void restoreState(IMemento memento) {
        this.fMementoToRestore = memento;
    }

    public void saveState(IMemento memento) {
        ISelection selection = this.doGetSelection();
        if (selection instanceof ITextSelection) {
            memento.putInteger(TAG_SELECTION_OFFSET, ((ITextSelection)selection).getOffset());
            memento.putInteger(TAG_SELECTION_LENGTH, ((ITextSelection)selection).getLength());
        }
        StyledText textWidget = this.fSourceViewer.getTextWidget();
        memento.putInteger(TAG_SELECTION_TOP_PIXEL, textWidget.getTopPixel());
        memento.putInteger(TAG_SELECTION_HORIZONTAL_PIXEL, textWidget.getHorizontalPixel());
    }

    protected boolean containsSavedState(IMemento memento) {
        return memento.getInteger(TAG_SELECTION_OFFSET) != null && memento.getInteger(TAG_SELECTION_LENGTH) != null;
    }

    protected void doRestoreState(IMemento memento) {
        Integer horizontalPixel;
        Integer offset = memento.getInteger(TAG_SELECTION_OFFSET);
        if (offset == null) {
            return;
        }
        Integer length = memento.getInteger(TAG_SELECTION_LENGTH);
        if (length == null) {
            return;
        }
        this.doSetSelection((ISelection)new TextSelection(offset.intValue(), length.intValue()));
        StyledText textWidget = this.fSourceViewer.getTextWidget();
        Integer topPixel = memento.getInteger(TAG_SELECTION_TOP_PIXEL);
        if (topPixel != null) {
            textWidget.setTopPixel(topPixel.intValue());
        }
        if ((horizontalPixel = memento.getInteger(TAG_SELECTION_HORIZONTAL_PIXEL)) != null) {
            textWidget.setHorizontalPixel(horizontalPixel.intValue());
        }
    }

    public Saveable[] getSaveables() {
        if (this.fSavable == null) {
            this.fSavable = new TextEditorSavable(this);
        }
        return new Saveable[]{this.fSavable};
    }

    public Saveable[] getActiveSaveables() {
        return this.getSaveables();
    }

    protected void installTabsToSpacesConverter() {
        SourceViewerConfiguration config = this.getSourceViewerConfiguration();
        if (config != null && this.fSourceViewer instanceof ITextViewerExtension7) {
            int tabWidth = config.getTabWidth(this.fSourceViewer);
            TabsToSpacesConverter tabToSpacesConverter = new TabsToSpacesConverter();
            tabToSpacesConverter.setLineTracker((ILineTracker)new DefaultLineTracker());
            tabToSpacesConverter.setNumberOfSpacesPerTab(tabWidth);
            ((ITextViewerExtension7)this.fSourceViewer).setTabsToSpacesConverter((IAutoEditStrategy)tabToSpacesConverter);
            this.updateIndentPrefixes();
        }
    }

    protected void uninstallTabsToSpacesConverter() {
        if (this.fSourceViewer instanceof ITextViewerExtension7) {
            ((ITextViewerExtension7)this.fSourceViewer).setTabsToSpacesConverter(null);
            if (this.fSourceViewer.getTextWidget() != null) {
                this.updateIndentPrefixes();
            }
        }
    }

    protected boolean isTabsToSpacesConversionEnabled() {
        return false;
    }

    protected final void updateIndentPrefixes() {
        SourceViewerConfiguration configuration = this.getSourceViewerConfiguration();
        String[] types = configuration.getConfiguredContentTypes(this.fSourceViewer);
        int i = 0;
        while (i < types.length) {
            String[] prefixes = configuration.getIndentPrefixes(this.fSourceViewer, types[i]);
            if (prefixes != null && prefixes.length > 0) {
                this.fSourceViewer.setIndentPrefixes(prefixes, types[i]);
            }
            ++i;
        }
    }

    protected boolean isBlockSelectionModeSupported() {
        return true;
    }

    public final boolean isBlockSelectionModeEnabled() {
        StyledText styledText;
        ISourceViewer viewer = this.getSourceViewer();
        if (viewer != null && (styledText = viewer.getTextWidget()) != null) {
            return styledText.getBlockSelection();
        }
        return false;
    }

    public void setBlockSelectionMode(boolean enable) {
        StyledText styledText;
        if (!this.isBlockSelectionModeSupported()) {
            return;
        }
        ISourceViewer viewer = this.getSourceViewer();
        if (viewer != null && (styledText = viewer.getTextWidget()) != null) {
            Font normalFont;
            Font blockFont;
            if (enable && !(blockFont = JFaceResources.getFont((String)BLOCK_SELECTION_MODE_FONT)).equals((Object)(normalFont = styledText.getFont())) && !normalFont.getFontData()[0].equals((Object)blockFont.getFontData()[0])) {
                this.setFont(viewer, blockFont);
                this.disposeFont();
                this.updateCaret();
            }
            styledText.setBlockSelection(enable);
            if (!enable) {
                this.initializeViewerFont(viewer);
                this.updateCaret();
            }
        }
    }

    protected abstract class AbstractSelectionChangedListener
    implements ISelectionChangedListener {
        protected AbstractSelectionChangedListener() {
        }

        public void install(ISelectionProvider selectionProvider) {
            if (selectionProvider == null) {
                return;
            }
            if (selectionProvider instanceof IPostSelectionProvider) {
                IPostSelectionProvider provider = (IPostSelectionProvider)selectionProvider;
                provider.addPostSelectionChangedListener((ISelectionChangedListener)this);
            } else {
                selectionProvider.addSelectionChangedListener((ISelectionChangedListener)this);
            }
        }

        public void uninstall(ISelectionProvider selectionProvider) {
            if (selectionProvider == null) {
                return;
            }
            if (selectionProvider instanceof IPostSelectionProvider) {
                IPostSelectionProvider provider = (IPostSelectionProvider)selectionProvider;
                provider.removePostSelectionChangedListener((ISelectionChangedListener)this);
            } else {
                selectionProvider.removeSelectionChangedListener((ISelectionChangedListener)this);
            }
        }
    }

    static class ActionActivationCode {
        public String fActionId;
        public char fCharacter;
        public int fKeyCode = -1;
        public int fStateMask = -1;

        public ActionActivationCode(String actionId) {
            this.fActionId = actionId;
        }

        public boolean matches(VerifyEvent event) {
            return !(event.character != this.fCharacter || this.fKeyCode != -1 && event.keyCode != this.fKeyCode || this.fStateMask != -1 && event.stateMask != this.fStateMask);
        }
    }

    class ActivationCodeTrigger
    implements VerifyKeyListener {
        private boolean fIsInstalled = false;
        private IKeyBindingService fKeyBindingService;

        ActivationCodeTrigger() {
        }

        public void verifyKey(VerifyEvent event) {
            ActionActivationCode code = null;
            int size = AbstractTextEditor.this.fActivationCodes.size();
            int i = 0;
            while (i < size) {
                IAction action;
                code = (ActionActivationCode)AbstractTextEditor.this.fActivationCodes.get(i);
                if (code.matches(event) && (action = AbstractTextEditor.this.getAction(code.fActionId)) != null) {
                    if (action instanceof IUpdate) {
                        ((IUpdate)action).update();
                    }
                    if (!action.isEnabled() && action instanceof IReadOnlyDependent) {
                        IReadOnlyDependent dependent = (IReadOnlyDependent)action;
                        boolean writable = dependent.isEnabled(true);
                        if (writable) {
                            event.doit = false;
                            return;
                        }
                    } else if (action.isEnabled()) {
                        event.doit = false;
                        action.run();
                        return;
                    }
                }
                ++i;
            }
        }

        public void install() {
            if (!this.fIsInstalled) {
                if (AbstractTextEditor.this.fSourceViewer instanceof ITextViewerExtension) {
                    ITextViewerExtension e = (ITextViewerExtension)AbstractTextEditor.this.fSourceViewer;
                    e.prependVerifyKeyListener((VerifyKeyListener)this);
                } else {
                    StyledText text = AbstractTextEditor.this.fSourceViewer.getTextWidget();
                    text.addVerifyKeyListener((VerifyKeyListener)this);
                }
                this.fKeyBindingService = AbstractTextEditor.this.getEditorSite().getKeyBindingService();
                this.fIsInstalled = true;
            }
        }

        public void uninstall() {
            if (this.fIsInstalled) {
                StyledText text;
                if (AbstractTextEditor.this.fSourceViewer instanceof ITextViewerExtension) {
                    ITextViewerExtension e = (ITextViewerExtension)AbstractTextEditor.this.fSourceViewer;
                    e.removeVerifyKeyListener((VerifyKeyListener)this);
                } else if (AbstractTextEditor.this.fSourceViewer != null && (text = AbstractTextEditor.this.fSourceViewer.getTextWidget()) != null && !text.isDisposed()) {
                    text.removeVerifyKeyListener((VerifyKeyListener)AbstractTextEditor.this.fActivationCodeTrigger);
                }
                this.fIsInstalled = false;
                this.fKeyBindingService = null;
            }
        }

        public void registerActionForKeyActivation(IAction action) {
            if (this.fIsInstalled && action.getActionDefinitionId() != null) {
                this.fKeyBindingService.registerAction(action);
            }
        }

        public void unregisterActionFromKeyActivation(IAction action) {
            if (this.fIsInstalled && action.getActionDefinitionId() != null) {
                this.fKeyBindingService.unregisterAction(action);
            }
        }

        public void setScopes(String[] keyBindingScopes) {
            if (keyBindingScopes != null && keyBindingScopes.length > 0) {
                this.fKeyBindingService.setScopes(keyBindingScopes);
            }
        }
    }

    class ActivationListener
    implements IPartListener,
    IWindowListener {
        private IWorkbenchPart fActivePart;
        private boolean fIsHandlingActivation = false;
        private IPartService fPartService;

        public ActivationListener(IPartService partService) {
            this.fPartService = partService;
            this.fPartService.addPartListener((IPartListener)this);
            PlatformUI.getWorkbench().addWindowListener((IWindowListener)this);
        }

        public void dispose() {
            this.fPartService.removePartListener((IPartListener)this);
            PlatformUI.getWorkbench().removeWindowListener((IWindowListener)this);
            this.fPartService = null;
        }

        public void partActivated(IWorkbenchPart part) {
            this.fActivePart = part;
            this.handleActivation();
        }

        public void partBroughtToTop(IWorkbenchPart part) {
        }

        public void partClosed(IWorkbenchPart part) {
        }

        public void partDeactivated(IWorkbenchPart part) {
            this.fActivePart = null;
        }

        public void partOpened(IWorkbenchPart part) {
            if (part == AbstractTextEditor.this && AbstractTextEditor.this.fMementoToRestore != null && AbstractTextEditor.this.containsSavedState(AbstractTextEditor.this.fMementoToRestore)) {
                AbstractTextEditor.this.doRestoreState(AbstractTextEditor.this.fMementoToRestore);
                AbstractTextEditor.this.fMementoToRestore = null;
            }
        }

        private void handleActivation() {
            block11: {
                block12: {
                    if (this.fIsHandlingActivation) {
                        return;
                    }
                    if (this.fActivePart == AbstractTextEditor.this) break block12;
                    if (this.fActivePart == null) break block11;
                    Class<?> clazz = class$0;
                    if (clazz == null) {
                        try {
                            clazz = class$0 = Class.forName("org.eclipse.ui.texteditor.AbstractTextEditor");
                        }
                        catch (ClassNotFoundException classNotFoundException) {
                            throw new NoClassDefFoundError(classNotFoundException.getMessage());
                        }
                    }
                    if (this.fActivePart.getAdapter((Class)clazz) != AbstractTextEditor.this) break block11;
                }
                this.fIsHandlingActivation = true;
                try {
                    AbstractTextEditor.this.safelySanityCheckState(AbstractTextEditor.this.getEditorInput());
                }
                finally {
                    this.fIsHandlingActivation = false;
                    AbstractTextEditor.this.fHasBeenActivated = true;
                }
            }
        }

        public void windowActivated(IWorkbenchWindow window) {
            if (window == AbstractTextEditor.this.getEditorSite().getWorkbenchWindow()) {
                window.getShell().getDisplay().asyncExec(new Runnable(this){
                    final /* synthetic */ ActivationListener this$1;
                    {
                        this.this$1 = activationListener;
                    }

                    public void run() {
                        ActivationListener.access$0(this.this$1);
                    }
                });
            }
        }

        public void windowDeactivated(IWorkbenchWindow window) {
        }

        public void windowClosed(IWorkbenchWindow window) {
        }

        public void windowOpened(IWorkbenchWindow window) {
        }

        static /* synthetic */ void access$0(ActivationListener activationListener) {
            activationListener.handleActivation();
        }
    }

    protected static class ColumnSupport
    implements IColumnSupport {
        private final AbstractTextEditor fEditor;
        private final RulerColumnRegistry fRegistry;
        private final List fColumns;

        public ColumnSupport(AbstractTextEditor editor, RulerColumnRegistry registry) {
            Assert.isLegal((editor != null ? 1 : 0) != 0);
            Assert.isLegal((registry != null ? 1 : 0) != 0);
            this.fEditor = editor;
            this.fRegistry = registry;
            this.fColumns = new ArrayList();
        }

        public final void setColumnVisible(RulerColumnDescriptor descriptor, boolean visible) {
            Assert.isLegal((descriptor != null ? 1 : 0) != 0);
            CompositeRuler ruler = this.getRuler();
            if (ruler == null) {
                return;
            }
            if (!this.isColumnSupported(descriptor)) {
                visible = false;
            }
            if (this.isColumnVisible(descriptor)) {
                if (!visible) {
                    this.removeColumn(ruler, descriptor);
                }
            } else if (visible) {
                this.addColumn(ruler, descriptor);
            }
        }

        private void addColumn(CompositeRuler ruler, RulerColumnDescriptor descriptor) {
            int idx = this.computeIndex(ruler, descriptor);
            SafeRunnable runnable = new SafeRunnable(this, descriptor, ruler, idx){
                final /* synthetic */ ColumnSupport this$1;
                private final /* synthetic */ RulerColumnDescriptor val$descriptor;
                private final /* synthetic */ CompositeRuler val$ruler;
                private final /* synthetic */ int val$idx;
                {
                    this.this$1 = columnSupport;
                    this.val$descriptor = rulerColumnDescriptor;
                    this.val$ruler = compositeRuler;
                    this.val$idx = n;
                }

                public void run() throws Exception {
                    IContributedRulerColumn column = this.val$descriptor.createColumn(ColumnSupport.access$0(this.this$1));
                    ColumnSupport.access$1(this.this$1).add(column);
                    this.this$1.initializeColumn(column);
                    this.val$ruler.addDecorator(this.val$idx, (IVerticalRulerColumn)column);
                }
            };
            SafeRunner.run((ISafeRunnable)runnable);
        }

        protected void initializeColumn(IContributedRulerColumn column) {
        }

        private void removeColumn(CompositeRuler ruler, RulerColumnDescriptor descriptor) {
            this.removeColumn(ruler, this.getVisibleColumn(ruler, descriptor));
        }

        private void removeColumn(CompositeRuler ruler, IContributedRulerColumn rulerColumn) {
            if (rulerColumn != null) {
                SafeRunnable runnable = new SafeRunnable(this, ruler, rulerColumn){
                    final /* synthetic */ ColumnSupport this$1;
                    private final /* synthetic */ CompositeRuler val$ruler;
                    private final /* synthetic */ IContributedRulerColumn val$rulerColumn;
                    {
                        this.this$1 = columnSupport;
                        this.val$ruler = compositeRuler;
                        this.val$rulerColumn = iContributedRulerColumn;
                    }

                    public void run() throws Exception {
                        if (this.val$ruler != null) {
                            this.val$ruler.removeDecorator((IVerticalRulerColumn)this.val$rulerColumn);
                        }
                        this.val$rulerColumn.columnRemoved();
                    }
                };
                SafeRunner.run((ISafeRunnable)runnable);
            }
        }

        private IContributedRulerColumn getVisibleColumn(CompositeRuler ruler, RulerColumnDescriptor descriptor) {
            Iterator it = ruler.getDecoratorIterator();
            while (it.hasNext()) {
                IContributedRulerColumn rulerColumn;
                RulerColumnDescriptor rcd;
                IVerticalRulerColumn column = (IVerticalRulerColumn)it.next();
                if (!(column instanceof IContributedRulerColumn) || !descriptor.equals(rcd = (rulerColumn = (IContributedRulerColumn)column).getDescriptor())) continue;
                return rulerColumn;
            }
            return null;
        }

        private int computeIndex(CompositeRuler ruler, RulerColumnDescriptor descriptor) {
            int index = 0;
            List all = this.fRegistry.getColumnDescriptors();
            int newPos = all.indexOf(descriptor);
            Iterator it = ruler.getDecoratorIterator();
            while (it.hasNext()) {
                RulerColumnDescriptor rcd;
                IVerticalRulerColumn column = (IVerticalRulerColumn)it.next();
                if (column instanceof IContributedRulerColumn ? (rcd = ((IContributedRulerColumn)column).getDescriptor()) != null && all.indexOf(rcd) > newPos : "org.eclipse.jface.text.source.projection.ProjectionRulerColumn".equals(column.getClass().getName())) break;
                ++index;
            }
            return index;
        }

        public final boolean isColumnVisible(RulerColumnDescriptor descriptor) {
            Assert.isLegal((descriptor != null ? 1 : 0) != 0);
            CompositeRuler ruler = this.getRuler();
            return ruler != null && this.getVisibleColumn(ruler, descriptor) != null;
        }

        public final boolean isColumnSupported(RulerColumnDescriptor descriptor) {
            Assert.isLegal((descriptor != null ? 1 : 0) != 0);
            if (this.getRuler() == null) {
                return false;
            }
            if (descriptor == null) {
                return false;
            }
            return descriptor.matchesEditor(this.fEditor);
        }

        private CompositeRuler getRuler() {
            Object ruler;
            Class<?> clazz = class$1;
            if (clazz == null) {
                try {
                    clazz = class$1 = Class.forName("org.eclipse.jface.text.source.IVerticalRulerInfo");
                }
                catch (ClassNotFoundException classNotFoundException) {
                    throw new NoClassDefFoundError(classNotFoundException.getMessage());
                }
            }
            if ((ruler = this.fEditor.getAdapter(clazz)) instanceof CompositeRuler) {
                return (CompositeRuler)ruler;
            }
            return null;
        }

        public void dispose() {
            Iterator iter = new ArrayList(this.fColumns).iterator();
            while (iter.hasNext()) {
                this.removeColumn(this.getRuler(), (IContributedRulerColumn)iter.next());
            }
            this.fColumns.clear();
        }

        static /* synthetic */ AbstractTextEditor access$0(ColumnSupport columnSupport) {
            return columnSupport.fEditor;
        }

        static /* synthetic */ List access$1(ColumnSupport columnSupport) {
            return columnSupport.fColumns;
        }
    }

    class ElementStateListener
    implements IElementStateListener,
    IElementStateListenerExtension {
        private Validator fValidator;
        private Display fDisplay;

        ElementStateListener() {
        }

        public void elementStateValidationChanged(Object element, boolean isStateValidated) {
            if (element != null && element.equals(AbstractTextEditor.this.getEditorInput())) {
                Runnable r = new Runnable(this, isStateValidated){
                    final /* synthetic */ ElementStateListener this$1;
                    private final /* synthetic */ boolean val$isStateValidated;
                    {
                        this.this$1 = elementStateListener;
                        this.val$isStateValidated = bl;
                    }

                    public void run() {
                        StyledText textWidget;
                        ISourceViewer viewer;
                        ElementStateListener.access$3(this.this$1).enableSanityChecking(true);
                        if (this.val$isStateValidated) {
                            ISourceViewer viewer2;
                            if (ElementStateListener.access$0(this.this$1) != null && (viewer2 = AbstractTextEditor.access$0(ElementStateListener.access$3(this.this$1))) != null) {
                                StyledText textWidget2 = viewer2.getTextWidget();
                                if (textWidget2 != null && !textWidget2.isDisposed()) {
                                    textWidget2.removeVerifyListener((VerifyListener)ElementStateListener.access$0(this.this$1));
                                }
                                ElementStateListener.access$1(this.this$1, null);
                            }
                            ElementStateListener.access$3(this.this$1).enableStateValidation(false);
                        } else if (!this.val$isStateValidated && ElementStateListener.access$0(this.this$1) == null && (viewer = AbstractTextEditor.access$0(ElementStateListener.access$3(this.this$1))) != null && (textWidget = viewer.getTextWidget()) != null && !textWidget.isDisposed()) {
                            ElementStateListener.access$1(this.this$1, this.this$1.new Validator());
                            ElementStateListener.access$3(this.this$1).enableStateValidation(true);
                            textWidget.addVerifyListener((VerifyListener)ElementStateListener.access$0(this.this$1));
                        }
                    }
                };
                this.execute(r, false);
            }
        }

        public void elementDirtyStateChanged(Object element, boolean isDirty) {
            if (element != null && element.equals(AbstractTextEditor.this.getEditorInput())) {
                Runnable r = new Runnable(this){
                    final /* synthetic */ ElementStateListener this$1;
                    {
                        this.this$1 = elementStateListener;
                    }

                    public void run() {
                        ElementStateListener.access$3(this.this$1).enableSanityChecking(true);
                        ElementStateListener.access$3(this.this$1).firePropertyChange(257);
                    }
                };
                this.execute(r, false);
            }
        }

        public void elementContentAboutToBeReplaced(Object element) {
            if (element != null && element.equals(AbstractTextEditor.this.getEditorInput())) {
                Runnable r = new Runnable(this){
                    final /* synthetic */ ElementStateListener this$1;
                    {
                        this.this$1 = elementStateListener;
                    }

                    public void run() {
                        ElementStateListener.access$3(this.this$1).enableSanityChecking(true);
                        ElementStateListener.access$3(this.this$1).rememberSelection();
                        ElementStateListener.access$3(this.this$1).resetHighlightRange();
                    }
                };
                this.execute(r, false);
            }
        }

        public void elementContentReplaced(Object element) {
            if (element != null && element.equals(AbstractTextEditor.this.getEditorInput())) {
                Runnable r = new Runnable(this){
                    final /* synthetic */ ElementStateListener this$1;
                    {
                        this.this$1 = elementStateListener;
                    }

                    public void run() {
                        ElementStateListener.access$3(this.this$1).enableSanityChecking(true);
                        ElementStateListener.access$3(this.this$1).firePropertyChange(257);
                        ElementStateListener.access$3(this.this$1).restoreSelection();
                        ElementStateListener.access$3(this.this$1).handleElementContentReplaced();
                    }
                };
                this.execute(r, false);
            }
        }

        public void elementDeleted(Object deletedElement) {
            if (deletedElement != null && deletedElement.equals(AbstractTextEditor.this.getEditorInput())) {
                Runnable r = new Runnable(this){
                    final /* synthetic */ ElementStateListener this$1;
                    {
                        this.this$1 = elementStateListener;
                    }

                    public void run() {
                        ElementStateListener.access$3(this.this$1).enableSanityChecking(true);
                        ElementStateListener.access$3(this.this$1).close(false);
                    }
                };
                this.execute(r, false);
            }
        }

        public void elementMoved(Object originalElement, Object movedElement) {
            if (originalElement != null && originalElement.equals(AbstractTextEditor.this.getEditorInput())) {
                boolean doValidationAsync = Display.getCurrent() != null;
                Runnable r = new Runnable(this, originalElement, movedElement, doValidationAsync){
                    final /* synthetic */ ElementStateListener this$1;
                    private final /* synthetic */ Object val$originalElement;
                    private final /* synthetic */ Object val$movedElement;
                    private final /* synthetic */ boolean val$doValidationAsync;
                    {
                        this.this$1 = elementStateListener;
                        this.val$originalElement = object;
                        this.val$movedElement = object2;
                        this.val$doValidationAsync = bl;
                    }

                    public void run() {
                        ElementStateListener.access$3(this.this$1).enableSanityChecking(true);
                        if (AbstractTextEditor.access$0(ElementStateListener.access$3(this.this$1)) == null) {
                            return;
                        }
                        if (!ElementStateListener.access$3(this.this$1).canHandleMove((IEditorInput)this.val$originalElement, (IEditorInput)this.val$movedElement)) {
                            ElementStateListener.access$3(this.this$1).close(true);
                            return;
                        }
                        if (this.val$movedElement == null || this.val$movedElement instanceof IEditorInput) {
                            String previousContent;
                            ElementStateListener.access$3(this.this$1).rememberSelection();
                            IDocumentProvider d = ElementStateListener.access$3(this.this$1).getDocumentProvider();
                            IDocumentUndoManager previousUndoManager = null;
                            IDocument changed = null;
                            boolean wasDirty = ElementStateListener.access$3(this.this$1).isDirty();
                            changed = d.getDocument(ElementStateListener.access$3(this.this$1).getEditorInput());
                            if (changed != null) {
                                previousContent = wasDirty ? changed.get() : null;
                                previousUndoManager = DocumentUndoManagerRegistry.getDocumentUndoManager((IDocument)changed);
                                if (previousUndoManager != null) {
                                    previousUndoManager.connect((Object)this);
                                }
                            } else {
                                previousContent = null;
                            }
                            ElementStateListener.access$3(this.this$1).setInput((IEditorInput)this.val$movedElement);
                            if (previousUndoManager != null) {
                                IDocumentUndoManager newUndoManager;
                                IDocument newDocument = ElementStateListener.access$3(this.this$1).getDocumentProvider().getDocument(this.val$movedElement);
                                if (newDocument != null && (newUndoManager = DocumentUndoManagerRegistry.getDocumentUndoManager((IDocument)newDocument)) != null) {
                                    newUndoManager.transferUndoHistory(previousUndoManager);
                                }
                                previousUndoManager.disconnect((Object)this);
                            }
                            if (wasDirty && changed != null) {
                                Runnable r2 = new Runnable(this, d, previousContent){
                                    final /* synthetic */ 7 this$2;
                                    private final /* synthetic */ IDocumentProvider val$d;
                                    private final /* synthetic */ String val$previousContent;
                                    {
                                        this.this$2 = var1_1;
                                        this.val$d = iDocumentProvider;
                                        this.val$previousContent = string;
                                    }

                                    public void run() {
                                        ElementStateListener.access$3(7.access$0(this.this$2)).validateState(ElementStateListener.access$3(7.access$0(this.this$2)).getEditorInput());
                                        this.val$d.getDocument(ElementStateListener.access$3(7.access$0(this.this$2)).getEditorInput()).set(this.val$previousContent);
                                        ElementStateListener.access$3(7.access$0(this.this$2)).updateStatusField("ElementState");
                                        ElementStateListener.access$3(7.access$0(this.this$2)).restoreSelection();
                                    }
                                };
                                ElementStateListener.access$2(this.this$1, r2, this.val$doValidationAsync);
                            } else {
                                ElementStateListener.access$3(this.this$1).restoreSelection();
                            }
                        }
                    }

                    static /* synthetic */ ElementStateListener access$0(7 var0) {
                        return var0.this$1;
                    }
                };
                this.execute(r, false);
            }
        }

        public void elementStateChanging(Object element) {
            if (element != null && element.equals(AbstractTextEditor.this.getEditorInput())) {
                AbstractTextEditor.this.enableSanityChecking(false);
            }
        }

        public void elementStateChangeFailed(Object element) {
            if (element != null && element.equals(AbstractTextEditor.this.getEditorInput())) {
                AbstractTextEditor.this.enableSanityChecking(true);
            }
        }

        private void execute(Runnable runnable, boolean postAsync) {
            if (postAsync || Display.getCurrent() == null) {
                if (this.fDisplay == null) {
                    this.fDisplay = AbstractTextEditor.this.getSite().getShell().getDisplay();
                }
                this.fDisplay.asyncExec(runnable);
            } else {
                runnable.run();
            }
        }

        static /* synthetic */ Validator access$0(ElementStateListener elementStateListener) {
            return elementStateListener.fValidator;
        }

        static /* synthetic */ void access$1(ElementStateListener elementStateListener, Validator validator) {
            elementStateListener.fValidator = validator;
        }

        static /* synthetic */ void access$2(ElementStateListener elementStateListener, Runnable runnable, boolean bl) {
            elementStateListener.execute(runnable, bl);
        }

        class Validator
        implements VerifyListener {
            Validator() {
            }

            public void verifyText(VerifyEvent e) {
                IDocument document = AbstractTextEditor.this.getDocumentProvider().getDocument(AbstractTextEditor.this.getEditorInput());
                boolean[] documentChanged = new boolean[1];
                IDocumentListener listener = new IDocumentListener(this, documentChanged){
                    final /* synthetic */ Validator this$2;
                    private final /* synthetic */ boolean[] val$documentChanged;
                    {
                        this.this$2 = validator;
                        this.val$documentChanged = blArray;
                    }

                    public void documentAboutToBeChanged(DocumentEvent event) {
                    }

                    public void documentChanged(DocumentEvent event) {
                        this.val$documentChanged[0] = true;
                    }
                };
                try {
                    if (document != null) {
                        document.addDocumentListener(listener);
                    }
                    if (!AbstractTextEditor.this.validateEditorInputState() || documentChanged[0]) {
                        e.doit = false;
                    }
                }
                finally {
                    if (document != null) {
                        document.removeDocumentListener(listener);
                    }
                }
            }
        }
    }

    class FontPropertyChangeListener
    implements IPropertyChangeListener {
        FontPropertyChangeListener() {
        }

        public void propertyChange(PropertyChangeEvent event) {
            if (AbstractTextEditor.this.fSourceViewer == null) {
                return;
            }
            String property = event.getProperty();
            if (AbstractTextEditor.BLOCK_SELECTION_MODE_FONT.equals(property) && AbstractTextEditor.this.isBlockSelectionModeEnabled()) {
                Font blockFont = JFaceResources.getFont((String)AbstractTextEditor.BLOCK_SELECTION_MODE_FONT);
                AbstractTextEditor.this.setFont(AbstractTextEditor.this.fSourceViewer, blockFont);
                AbstractTextEditor.this.disposeFont();
                AbstractTextEditor.this.updateCaret();
                return;
            }
            if (AbstractTextEditor.this.getFontPropertyPreferenceKey().equals(property) && !AbstractTextEditor.this.isBlockSelectionModeEnabled()) {
                AbstractTextEditor.this.initializeViewerFont(AbstractTextEditor.this.fSourceViewer);
                AbstractTextEditor.this.updateCaret();
                return;
            }
        }
    }

    static interface ICursorListener
    extends MouseListener,
    KeyListener {
    }

    protected static final class IdMapEntry {
        private String fActionId;
        private int fAction;

        public IdMapEntry(String actionId, int action) {
            this.fActionId = actionId;
            this.fAction = action;
        }

        public String getActionId() {
            return this.fActionId;
        }

        public int getAction() {
            return this.fAction;
        }
    }

    private final class InformationDispatchAction
    extends TextEditorAction {
        private final TextOperationAction fTextOperationAction;

        public InformationDispatchAction(ResourceBundle resourceBundle, String prefix, TextOperationAction textOperationAction) {
            super(resourceBundle, prefix, AbstractTextEditor.this);
            if (textOperationAction == null) {
                throw new IllegalArgumentException();
            }
            this.fTextOperationAction = textOperationAction;
        }

        public void run() {
            IAnnotationHover annotationHover;
            ITextHover textHover;
            ITextViewerExtension4 extension4;
            ISourceViewer sourceViewer = AbstractTextEditor.this.getSourceViewer();
            if (sourceViewer == null) {
                if (this.fTextOperationAction.isEnabled()) {
                    this.fTextOperationAction.run();
                }
                return;
            }
            if (sourceViewer instanceof ITextViewerExtension4 && (extension4 = (ITextViewerExtension4)sourceViewer).moveFocusToWidgetToken()) {
                return;
            }
            if (sourceViewer instanceof ITextViewerExtension2 && (textHover = ((ITextViewerExtension2)sourceViewer).getCurrentTextHover()) != null && this.makeTextHoverFocusable(sourceViewer, textHover)) {
                return;
            }
            if (sourceViewer instanceof ISourceViewerExtension3 && (annotationHover = ((ISourceViewerExtension3)sourceViewer).getCurrentAnnotationHover()) != null && this.makeAnnotationHoverFocusable(annotationHover)) {
                return;
            }
            if (this.fTextOperationAction.isEnabled()) {
                this.fTextOperationAction.run();
            }
        }

        private boolean makeTextHoverFocusable(ISourceViewer sourceViewer, ITextHover textHover) {
            IRegion hoverRegion;
            int offset;
            block5: {
                Point hoverEventLocation = ((ITextViewerExtension2)sourceViewer).getHoverEventLocation();
                offset = this.computeOffsetAtLocation((ITextViewer)sourceViewer, hoverEventLocation.x, hoverEventLocation.y);
                if (offset == -1) {
                    return false;
                }
                try {
                    hoverRegion = textHover.getHoverRegion((ITextViewer)sourceViewer, offset);
                    if (hoverRegion != null) break block5;
                    return false;
                }
                catch (BadLocationException badLocationException) {
                    return false;
                }
            }
            String hoverInfo = textHover.getHoverInfo((ITextViewer)sourceViewer, hoverRegion);
            IInformationControlCreator controlCreator = null;
            if (textHover instanceof IInformationProviderExtension2) {
                controlCreator = ((IInformationProviderExtension2)textHover).getInformationPresenterControlCreator();
            }
            FocusedInformationPresenter.InformationProvider informationProvider = new FocusedInformationPresenter.InformationProvider(hoverRegion, hoverInfo, controlCreator);
            FocusedInformationPresenter informationPresenter = this.getInformationPresenter();
            informationPresenter.setOffset(offset);
            informationPresenter.setAnchor(AbstractInformationControlManager.ANCHOR_BOTTOM);
            informationPresenter.setMargins(6, 6);
            String contentType = TextUtilities.getContentType((IDocument)sourceViewer.getDocument(), (String)AbstractTextEditor.this.getSourceViewerConfiguration().getConfiguredDocumentPartitioning(AbstractTextEditor.this.getSourceViewer()), (int)offset, (boolean)true);
            informationPresenter.setInformationProvider(informationProvider, contentType);
            informationPresenter.showInformation();
            return true;
        }

        private boolean makeAnnotationHoverFocusable(IAnnotationHover annotationHover) {
            IVerticalRuler info = AbstractTextEditor.this.getVerticalRuler();
            int line = info.getLineOfLastMouseButtonActivity();
            if (line == -1) {
                return false;
            }
            return this.getInformationPresenter().openFocusedAnnotationHover(annotationHover, line);
        }

        private FocusedInformationPresenter getInformationPresenter() {
            if (AbstractTextEditor.this.fInformationPresenter == null) {
                AbstractTextEditor.this.fInformationPresenter = new FocusedInformationPresenter(AbstractTextEditor.this.getSourceViewer(), AbstractTextEditor.this.getSourceViewerConfiguration());
            }
            return AbstractTextEditor.this.fInformationPresenter;
        }

        private int computeOffsetAtLocation(ITextViewer textViewer, int x, int y) {
            StyledText styledText = textViewer.getTextWidget();
            IDocument document = textViewer.getDocument();
            if (document == null) {
                return -1;
            }
            try {
                int widgetOffset = styledText.getOffsetAtLocation(new Point(x, y));
                Point p = styledText.getLocationAtOffset(widgetOffset);
                if (p.x > x) {
                    --widgetOffset;
                }
                if (textViewer instanceof ITextViewerExtension5) {
                    ITextViewerExtension5 extension = (ITextViewerExtension5)textViewer;
                    return extension.widgetOffset2ModelOffset(widgetOffset);
                }
                IRegion visibleRegion = textViewer.getVisibleRegion();
                return widgetOffset + visibleRegion.getOffset();
            }
            catch (IllegalArgumentException illegalArgumentException) {
                return -1;
            }
        }
    }

    protected class LineEndAction
    extends TextNavigationAction {
        private boolean fDoSelect;

        public LineEndAction(StyledText textWidget, boolean doSelect) {
            super(textWidget, 0x1000008);
            this.fDoSelect = doSelect;
        }

        protected int getLineEndPosition(IDocument document, String line, int length, int offset) {
            LinkedPosition linkedPosition;
            int index = length - 1;
            while (index > -1 && Character.isWhitespace(line.charAt(index))) {
                --index;
            }
            ++index;
            LinkedModeModel model = LinkedModeModel.getModel((IDocument)document, (int)offset);
            if (model != null && (linkedPosition = model.findPosition(new LinkedPosition(document, offset, 0))) != null) {
                int linkedPositionEnd = linkedPosition.getOffset() + linkedPosition.getLength();
                try {
                    int lineOffset = document.getLineInformationOfOffset(offset).getOffset();
                    if (offset != linkedPositionEnd && linkedPositionEnd - lineOffset < index) {
                        index = linkedPositionEnd - lineOffset;
                    }
                }
                catch (BadLocationException badLocationException) {}
            }
            return index;
        }

        public void run() {
            int lineLength;
            int caretOffsetInDocument;
            StyledText st;
            boolean isSmartHomeEndEnabled = false;
            IPreferenceStore store = AbstractTextEditor.this.getPreferenceStore();
            if (store != null) {
                isSmartHomeEndEnabled = store.getBoolean(AbstractTextEditor.PREFERENCE_NAVIGATION_SMART_HOME_END);
            }
            if ((st = AbstractTextEditor.this.fSourceViewer.getTextWidget()) == null || st.isDisposed()) {
                return;
            }
            int caretOffset = st.getCaretOffset();
            int lineNumber = st.getLineAtOffset(caretOffset);
            int lineOffset = st.getOffsetAtLine(lineNumber);
            IDocument document = AbstractTextEditor.this.fSourceViewer.getDocument();
            try {
                caretOffsetInDocument = AbstractTextEditor.widgetOffset2ModelOffset(AbstractTextEditor.this.fSourceViewer, caretOffset);
                lineLength = document.getLineInformationOfOffset(caretOffsetInDocument).getLength();
            }
            catch (BadLocationException badLocationException) {
                return;
            }
            int lineEndOffset = lineOffset + lineLength;
            int delta = lineEndOffset - st.getCharCount();
            if (delta > 0) {
                lineEndOffset -= delta;
                lineLength -= delta;
            }
            String line = "";
            if (lineLength > 0) {
                line = st.getText(lineOffset, lineEndOffset - 1);
            }
            Point oldSelection = st.getSelection();
            int newCaretOffset = -1;
            if (isSmartHomeEndEnabled) {
                int i = this.getLineEndPosition(document, line, lineLength, caretOffsetInDocument);
                newCaretOffset = caretOffset - lineOffset == i ? lineEndOffset : lineOffset + i;
            } else if (caretOffset < lineEndOffset) {
                newCaretOffset = lineEndOffset;
            }
            if (newCaretOffset == -1) {
                newCaretOffset = caretOffset;
            } else {
                st.setCaretOffset(newCaretOffset);
            }
            st.setCaretOffset(newCaretOffset);
            if (this.fDoSelect) {
                if (caretOffset < oldSelection.y) {
                    st.setSelection(oldSelection.y, newCaretOffset);
                } else {
                    st.setSelection(oldSelection.x, newCaretOffset);
                }
            } else {
                st.setSelection(newCaretOffset);
            }
            this.fireSelectionChanged(oldSelection);
        }
    }

    protected class LineStartAction
    extends TextNavigationAction {
        private final boolean fDoSelect;

        public LineStartAction(StyledText textWidget, boolean doSelect) {
            super(textWidget, 0x1000007);
            this.fDoSelect = doSelect;
        }

        protected int getLineStartPosition(IDocument document, String line, int length, int offset) {
            LinkedPosition linkedPosition;
            int index = 0;
            while (index < length && Character.isWhitespace(line.charAt(index))) {
                ++index;
            }
            LinkedModeModel model = LinkedModeModel.getModel((IDocument)document, (int)offset);
            if (model != null && (linkedPosition = model.findPosition(new LinkedPosition(document, offset, 0))) != null) {
                int linkedPositionOffset = linkedPosition.getOffset();
                try {
                    int lineOffset = document.getLineInformationOfOffset(offset).getOffset();
                    if (offset != linkedPositionOffset && index < linkedPositionOffset - lineOffset) {
                        index = linkedPositionOffset - lineOffset;
                    }
                }
                catch (BadLocationException badLocationException) {}
            }
            return index;
        }

        public void run() {
            int lineLength;
            int caretOffsetInDocument;
            StyledText st;
            boolean isSmartHomeEndEnabled = false;
            IPreferenceStore store = AbstractTextEditor.this.getPreferenceStore();
            if (store != null) {
                isSmartHomeEndEnabled = store.getBoolean(AbstractTextEditor.PREFERENCE_NAVIGATION_SMART_HOME_END);
            }
            if ((st = AbstractTextEditor.this.fSourceViewer.getTextWidget()) == null || st.isDisposed()) {
                return;
            }
            int caretOffset = st.getCaretOffset();
            int lineNumber = st.getLineAtOffset(caretOffset);
            int lineOffset = st.getOffsetAtLine(lineNumber);
            IDocument document = AbstractTextEditor.this.fSourceViewer.getDocument();
            try {
                caretOffsetInDocument = AbstractTextEditor.widgetOffset2ModelOffset(AbstractTextEditor.this.fSourceViewer, caretOffset);
                lineLength = document.getLineInformationOfOffset(caretOffsetInDocument).getLength();
            }
            catch (BadLocationException badLocationException) {
                return;
            }
            String line = "";
            if (lineLength > 0) {
                int end = lineOffset + lineLength - 1;
                end = Math.min(end, st.getCharCount() - 1);
                line = st.getText(lineOffset, end);
            }
            Point oldSelection = st.getSelection();
            int newCaretOffset = -1;
            if (isSmartHomeEndEnabled) {
                int index = this.getLineStartPosition(document, line, lineLength, caretOffsetInDocument);
                newCaretOffset = caretOffset - lineOffset == index ? lineOffset : lineOffset + index;
            } else if (caretOffset > lineOffset) {
                newCaretOffset = lineOffset;
            }
            if (newCaretOffset == -1) {
                newCaretOffset = caretOffset;
            } else {
                st.setCaretOffset(newCaretOffset);
            }
            if (this.fDoSelect) {
                if (caretOffset < oldSelection.y) {
                    st.setSelection(oldSelection.y, newCaretOffset);
                } else {
                    st.setSelection(oldSelection.x, newCaretOffset);
                }
            } else {
                st.setSelection(newCaretOffset);
            }
            this.fireSelectionChanged(oldSelection);
        }
    }

    private static class PositionLabelValue {
        public int fValue;

        private PositionLabelValue() {
        }

        public String toString() {
            return String.valueOf(this.fValue);
        }
    }

    class PropertyChangeListener
    implements IPropertyChangeListener {
        PropertyChangeListener() {
        }

        public void propertyChange(PropertyChangeEvent event) {
            AbstractTextEditor.this.handlePreferenceStoreChanged(event);
        }
    }

    class ScrollLinesAction
    extends Action {
        private int fScrollIncrement;

        public ScrollLinesAction(int scrollIncrement) {
            this.fScrollIncrement = scrollIncrement;
        }

        public void run() {
            if (AbstractTextEditor.this.fSourceViewer instanceof ITextViewerExtension5) {
                ITextViewerExtension5 extension = (ITextViewerExtension5)AbstractTextEditor.this.fSourceViewer;
                StyledText textWidget = AbstractTextEditor.this.fSourceViewer.getTextWidget();
                int topIndex = textWidget.getTopIndex();
                int newTopIndex = Math.max(0, topIndex + this.fScrollIncrement);
                AbstractTextEditor.this.fSourceViewer.setTopIndex(extension.widgetLine2ModelLine(newTopIndex));
            } else {
                int topIndex = AbstractTextEditor.this.fSourceViewer.getTopIndex();
                int newTopIndex = Math.max(0, topIndex + this.fScrollIncrement);
                AbstractTextEditor.this.fSourceViewer.setTopIndex(newTopIndex);
            }
        }
    }

    private class SelectionListener
    extends AbstractSelectionChangedListener
    implements IDocumentListener {
        private IDocument fDocument;
        private final Object INVALID_SELECTION;
        private Object fPostSelection;

        private SelectionListener() {
            this.fPostSelection = this.INVALID_SELECTION = new Object();
        }

        public synchronized void selectionChanged(SelectionChangedEvent event) {
            this.fPostSelection = event.getSelection();
        }

        public synchronized void documentAboutToBeChanged(DocumentEvent event) {
            this.fPostSelection = this.INVALID_SELECTION;
        }

        public void documentChanged(DocumentEvent event) {
        }

        public synchronized boolean isValid(ISelection selection) {
            return this.fPostSelection != this.INVALID_SELECTION && this.fPostSelection == selection;
        }

        public void setDocument(IDocument document) {
            if (this.fDocument != null) {
                this.fDocument.removeDocumentListener((IDocumentListener)this);
            }
            this.fDocument = document;
            if (this.fDocument != null) {
                this.fDocument.addDocumentListener((IDocumentListener)this);
            }
        }

        public void install(ISelectionProvider selectionProvider) {
            super.install(selectionProvider);
            if (selectionProvider != null) {
                selectionProvider.addSelectionChangedListener((ISelectionChangedListener)this);
            }
        }

        public void uninstall(ISelectionProvider selectionProvider) {
            if (selectionProvider != null) {
                selectionProvider.removeSelectionChangedListener((ISelectionChangedListener)this);
            }
            if (this.fDocument != null) {
                this.fDocument.removeDocumentListener((IDocumentListener)this);
                this.fDocument = null;
            }
            super.uninstall(selectionProvider);
        }
    }

    protected class SelectionProvider
    implements IPostSelectionProvider,
    ISelectionValidator {
        protected SelectionProvider() {
        }

        public void addSelectionChangedListener(ISelectionChangedListener listener) {
            if (AbstractTextEditor.this.fSourceViewer != null) {
                AbstractTextEditor.this.fSourceViewer.getSelectionProvider().addSelectionChangedListener(listener);
            }
        }

        public ISelection getSelection() {
            return AbstractTextEditor.this.doGetSelection();
        }

        public void removeSelectionChangedListener(ISelectionChangedListener listener) {
            if (AbstractTextEditor.this.fSourceViewer != null) {
                AbstractTextEditor.this.fSourceViewer.getSelectionProvider().removeSelectionChangedListener(listener);
            }
        }

        public void setSelection(ISelection selection) {
            AbstractTextEditor.this.doSetSelection(selection);
        }

        public void addPostSelectionChangedListener(ISelectionChangedListener listener) {
            if (AbstractTextEditor.this.fSourceViewer != null && AbstractTextEditor.this.fSourceViewer.getSelectionProvider() instanceof IPostSelectionProvider) {
                IPostSelectionProvider provider = (IPostSelectionProvider)AbstractTextEditor.this.fSourceViewer.getSelectionProvider();
                provider.addPostSelectionChangedListener(listener);
            }
        }

        public void removePostSelectionChangedListener(ISelectionChangedListener listener) {
            if (AbstractTextEditor.this.fSourceViewer != null && AbstractTextEditor.this.fSourceViewer.getSelectionProvider() instanceof IPostSelectionProvider) {
                IPostSelectionProvider provider = (IPostSelectionProvider)AbstractTextEditor.this.fSourceViewer.getSelectionProvider();
                provider.removePostSelectionChangedListener(listener);
            }
        }

        public boolean isValid(ISelection postSelection) {
            return AbstractTextEditor.this.fSelectionListener != null && AbstractTextEditor.this.fSelectionListener.isValid(postSelection);
        }
    }

    class ShowRulerContextMenuAction
    extends Action {
        ShowRulerContextMenuAction() {
        }

        public void run() {
            if (AbstractTextEditor.this.fSourceViewer == null) {
                return;
            }
            StyledText text = AbstractTextEditor.this.fSourceViewer.getTextWidget();
            if (text == null || text.isDisposed()) {
                return;
            }
            Point location = text.getLocationAtOffset(text.getCaretOffset());
            location.x = 0;
            if (AbstractTextEditor.this.fVerticalRuler instanceof IVerticalRulerExtension) {
                ((IVerticalRulerExtension)AbstractTextEditor.this.fVerticalRuler).setLocationOfLastMouseButtonActivity(location.x, location.y);
            }
            location = text.toDisplay(location);
            AbstractTextEditor.this.fRulerContextMenu.setLocation(location.x, location.y);
            AbstractTextEditor.this.fRulerContextMenu.setVisible(true);
        }
    }

    protected static class TextEditorSavable
    extends Saveable {
        private ITextEditor fTextEditor;
        private IEditorInput fEditorInput;
        private IDocument fDocument;

        public TextEditorSavable(ITextEditor textEditor) {
            Assert.isLegal((textEditor != null ? 1 : 0) != 0);
            this.fTextEditor = textEditor;
            this.fEditorInput = this.fTextEditor.getEditorInput();
            Assert.isLegal((this.fEditorInput != null ? 1 : 0) != 0);
        }

        public void disconnectEditor() {
            Class<?> clazz = class$2;
            if (clazz == null) {
                try {
                    clazz = class$2 = Class.forName("org.eclipse.jface.text.IDocument");
                }
                catch (ClassNotFoundException classNotFoundException) {
                    throw new NoClassDefFoundError(classNotFoundException.getMessage());
                }
            }
            this.getAdapter(clazz);
            this.fTextEditor = null;
        }

        public String getName() {
            return this.fEditorInput.getName();
        }

        public String getToolTipText() {
            return this.fEditorInput.getToolTipText();
        }

        public ImageDescriptor getImageDescriptor() {
            return this.fEditorInput.getImageDescriptor();
        }

        public void doSave(IProgressMonitor monitor) throws CoreException {
            this.fTextEditor.doSave(monitor);
        }

        public boolean isDirty() {
            return this.fTextEditor.isDirty();
        }

        public boolean supportsBackgroundSave() {
            return false;
        }

        public int hashCode() {
            Object document;
            Class<?> clazz = class$2;
            if (clazz == null) {
                try {
                    clazz = class$2 = Class.forName("org.eclipse.jface.text.IDocument");
                }
                catch (ClassNotFoundException classNotFoundException) {
                    throw new NoClassDefFoundError(classNotFoundException.getMessage());
                }
            }
            if ((document = this.getAdapter(clazz)) == null) {
                return 0;
            }
            return document.hashCode();
        }

        public boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof Saveable)) {
                return false;
            }
            Class<?> clazz = class$2;
            if (clazz == null) {
                try {
                    clazz = class$2 = Class.forName("org.eclipse.jface.text.IDocument");
                }
                catch (ClassNotFoundException classNotFoundException) {
                    throw new NoClassDefFoundError(classNotFoundException.getMessage());
                }
            }
            Object thisDocument = this.getAdapter(clazz);
            Saveable saveable = (Saveable)obj;
            Class<?> clazz2 = class$2;
            if (clazz2 == null) {
                try {
                    clazz2 = class$2 = Class.forName("org.eclipse.jface.text.IDocument");
                }
                catch (ClassNotFoundException classNotFoundException) {
                    throw new NoClassDefFoundError(classNotFoundException.getMessage());
                }
            }
            Object otherDocument = saveable.getAdapter((Class)clazz2);
            if (thisDocument == null && otherDocument == null) {
                return true;
            }
            return thisDocument != null && thisDocument.equals(otherDocument);
        }

        public Object getAdapter(Class adapter) {
            Class<?> clazz = class$2;
            if (clazz == null) {
                try {
                    clazz = class$2 = Class.forName("org.eclipse.jface.text.IDocument");
                }
                catch (ClassNotFoundException classNotFoundException) {
                    throw new NoClassDefFoundError(classNotFoundException.getMessage());
                }
            }
            if (adapter == clazz) {
                IDocumentProvider documentProvider;
                if (this.fDocument == null && (documentProvider = this.fTextEditor.getDocumentProvider()) != null) {
                    this.fDocument = documentProvider.getDocument(this.fEditorInput);
                }
                return this.fDocument;
            }
            return super.getAdapter(adapter);
        }
    }

    private static class TextInputListener
    implements ITextInputListener {
        public boolean inputChanged;

        private TextInputListener() {
        }

        public void inputDocumentAboutToBeChanged(IDocument oldInput, IDocument newInput) {
        }

        public void inputDocumentChanged(IDocument oldInput, IDocument newInput) {
            this.inputChanged = true;
        }
    }

    class TextListener
    implements ITextListener,
    ITextInputListener {
        private Runnable fRunnable = new Runnable(this){
            final /* synthetic */ TextListener this$1;
            {
                this.this$1 = textListener;
            }

            public void run() {
                TextListener.access$0(this.this$1, false);
                if (AbstractTextEditor.access$0(TextListener.access$5(this.this$1)) != null) {
                    TextListener.access$5(this.this$1).updateContentDependentActions();
                    if (TextListener.access$5(this.this$1).isDirty() && TextListener.access$1(this.this$1)) {
                        TextListener.access$2(this.this$1, false);
                        ISelection sel = TextListener.access$5(this.this$1).getSelectionProvider().getSelection();
                        IEditorInput input = TextListener.access$5(this.this$1).getEditorInput();
                        IDocument document = TextListener.access$5(this.this$1).getDocumentProvider().getDocument(input);
                        if (TextListener.access$3(this.this$1) != null) {
                            document.removePosition(TextListener.access$3(this.this$1));
                            TextListener.access$4(this.this$1, null);
                        }
                        if (sel instanceof ITextSelection && !sel.isEmpty()) {
                            ITextSelection s = (ITextSelection)sel;
                            TextListener.access$4(this.this$1, new Position(s.getOffset(), s.getLength()));
                            try {
                                document.addPosition(TextListener.access$3(this.this$1));
                            }
                            catch (BadLocationException badLocationException) {
                                TextListener.access$4(this.this$1, null);
                            }
                        }
                        TextEditorPlugin.getDefault().setLastEditPosition(new EditPosition(input, TextListener.access$5(this.this$1).getEditorSite().getId(), TextListener.access$3(this.this$1)));
                    }
                }
            }
        };
        private Display fDisplay;
        private Position fLocalLastEditPosition;
        private boolean fIsRunnablePosted = false;
        private boolean fUpdateLastEditPosition = false;

        TextListener() {
        }

        public void textChanged(TextEvent event) {
            if (this.fDisplay == null) {
                this.fDisplay = AbstractTextEditor.this.getSite().getShell().getDisplay();
            }
            if (event.getDocumentEvent() != null) {
                this.fUpdateLastEditPosition = true;
            }
            if (!this.fIsRunnablePosted) {
                this.fIsRunnablePosted = true;
                this.fDisplay.asyncExec(this.fRunnable);
            }
        }

        public void inputDocumentAboutToBeChanged(IDocument oldInput, IDocument newInput) {
            if (oldInput != null && this.fLocalLastEditPosition != null) {
                oldInput.removePosition(this.fLocalLastEditPosition);
                this.fLocalLastEditPosition = null;
            }
        }

        public void inputDocumentChanged(IDocument oldInput, IDocument newInput) {
        }

        static /* synthetic */ void access$0(TextListener textListener, boolean bl) {
            textListener.fIsRunnablePosted = bl;
        }

        static /* synthetic */ boolean access$1(TextListener textListener) {
            return textListener.fUpdateLastEditPosition;
        }

        static /* synthetic */ void access$2(TextListener textListener, boolean bl) {
            textListener.fUpdateLastEditPosition = bl;
        }

        static /* synthetic */ Position access$3(TextListener textListener) {
            return textListener.fLocalLastEditPosition;
        }

        static /* synthetic */ void access$4(TextListener textListener, Position position) {
            textListener.fLocalLastEditPosition = position;
        }

        static /* synthetic */ AbstractTextEditor access$5(TextListener textListener) {
            return textListener.AbstractTextEditor.this;
        }
    }

    class ToggleInsertModeAction
    extends ResourceAction {
        public ToggleInsertModeAction(ResourceBundle bundle, String prefix) {
            super(bundle, prefix, 2);
        }

        public void run() {
            AbstractTextEditor.this.switchToNextInsertMode();
        }

        public boolean isChecked() {
            return AbstractTextEditor.this.fInsertMode == SMART_INSERT;
        }
    }

    class ToggleOverwriteModeAction
    extends ResourceAction {
        public ToggleOverwriteModeAction(ResourceBundle bundle, String prefix) {
            super(bundle, prefix);
        }

        public void run() {
            AbstractTextEditor.this.toggleOverwriteMode();
        }
    }
}

