from PyObjCTools.TestSupport import *
from AppKit import *

class TestNSAccessibilityHelper (NSObject):
    def accessibilityIsAttributeSettable_(self, arg):
        return 1

    def accessibilityIsIgnored(self):
        return 1

    def accessibilityHitTest_(self, pt):
        pass

    def accessibilitySetOverrideValue_forAttribute_(self, v, a):
        return 1

class TestNSAccessibility (TestCase):
    def testInformal(self):
        self.failUnlessResultIsBOOL(TestNSAccessibilityHelper.accessibilityIsAttributeSettable_)
        self.failUnlessResultIsBOOL(TestNSAccessibilityHelper.accessibilityIsIgnored)
        self.failUnlessArgHasType(TestNSAccessibilityHelper.accessibilityHitTest_, 0, NSPoint.__typestr__)
        self.failUnlessResultIsBOOL(TestNSAccessibilityHelper.accessibilitySetOverrideValue_forAttribute_)

    def testFunction(self):
        v = NSAccessibilityRoleDescription(NSAccessibilityButtonRole, None)
        self.failUnlessIsInstance(v, unicode)

        b = NSButton.alloc().init()
        v = NSAccessibilityRoleDescriptionForUIElement(b)
        self.failUnlessIsInstance(v, unicode)

        v = NSAccessibilityActionDescription(NSAccessibilityIncrementAction)
        self.failUnlessIsInstance(v, unicode)

        self.assertRaises(objc.error, NSAccessibilityRaiseBadArgumentException, b, "attribute", "value")


        v = NSAccessibilityUnignoredAncestor(b)
        self.failUnless(v is None)

        v = NSAccessibilityUnignoredDescendant(b)
        self.failUnlessIsInstance(b, NSView)

        v = NSAccessibilityUnignoredChildren([b])
        self.failUnlessIsInstance(v, NSArray)

        v = NSAccessibilityUnignoredChildrenForOnlyChild(b)
        self.failUnlessIsInstance(v, NSArray)

        v = NSAccessibilityPostNotification(b, "hello")
        self.failUnless(v is None)


    def testConstants(self):
        self.failUnlessIsInstance(NSAccessibilityErrorCodeExceptionInfo, unicode)
        self.failUnlessIsInstance(NSAccessibilityRoleAttribute, unicode)
        self.failUnlessIsInstance(NSAccessibilityRoleDescriptionAttribute, unicode)
        self.failUnlessIsInstance(NSAccessibilitySubroleAttribute, unicode)
        self.failUnlessIsInstance(NSAccessibilityHelpAttribute, unicode)
        self.failUnlessIsInstance(NSAccessibilityValueAttribute, unicode)
        self.failUnlessIsInstance(NSAccessibilityMinValueAttribute, unicode)
        self.failUnlessIsInstance(NSAccessibilityMaxValueAttribute, unicode)
        self.failUnlessIsInstance(NSAccessibilityEnabledAttribute, unicode)
        self.failUnlessIsInstance(NSAccessibilityFocusedAttribute, unicode)
        self.failUnlessIsInstance(NSAccessibilityParentAttribute, unicode)
        self.failUnlessIsInstance(NSAccessibilityChildrenAttribute, unicode)
        self.failUnlessIsInstance(NSAccessibilityWindowAttribute, unicode)
        self.failUnlessIsInstance(NSAccessibilityTopLevelUIElementAttribute, unicode)
        self.failUnlessIsInstance(NSAccessibilitySelectedChildrenAttribute, unicode)
        self.failUnlessIsInstance(NSAccessibilityVisibleChildrenAttribute, unicode)
        self.failUnlessIsInstance(NSAccessibilityPositionAttribute, unicode)
        self.failUnlessIsInstance(NSAccessibilitySizeAttribute, unicode)
        self.failUnlessIsInstance(NSAccessibilityContentsAttribute, unicode)
        self.failUnlessIsInstance(NSAccessibilityTitleAttribute, unicode)
        self.failUnlessIsInstance(NSAccessibilityDescriptionAttribute, unicode)
        self.failUnlessIsInstance(NSAccessibilityShownMenuAttribute, unicode)
        self.failUnlessIsInstance(NSAccessibilityValueDescriptionAttribute, unicode)
        self.failUnlessIsInstance(NSAccessibilityPreviousContentsAttribute, unicode)
        self.failUnlessIsInstance(NSAccessibilityNextContentsAttribute, unicode)
        self.failUnlessIsInstance(NSAccessibilityHeaderAttribute, unicode)
        self.failUnlessIsInstance(NSAccessibilityEditedAttribute, unicode)
        self.failUnlessIsInstance(NSAccessibilityTabsAttribute, unicode)
        self.failUnlessIsInstance(NSAccessibilityHorizontalScrollBarAttribute, unicode)
        self.failUnlessIsInstance(NSAccessibilityVerticalScrollBarAttribute, unicode)
        self.failUnlessIsInstance(NSAccessibilityOverflowButtonAttribute, unicode)
        self.failUnlessIsInstance(NSAccessibilityIncrementButtonAttribute, unicode)
        self.failUnlessIsInstance(NSAccessibilityDecrementButtonAttribute, unicode)
        self.failUnlessIsInstance(NSAccessibilityFilenameAttribute, unicode)
        self.failUnlessIsInstance(NSAccessibilityExpandedAttribute, unicode)
        self.failUnlessIsInstance(NSAccessibilitySelectedAttribute, unicode)
        self.failUnlessIsInstance(NSAccessibilitySplittersAttribute, unicode)
        self.failUnlessIsInstance(NSAccessibilityDocumentAttribute, unicode)
        self.failUnlessIsInstance(NSAccessibilityURLAttribute, unicode)
        self.failUnlessIsInstance(NSAccessibilityIndexAttribute, unicode)
        self.failUnlessIsInstance(NSAccessibilityRowCountAttribute, unicode)
        self.failUnlessIsInstance(NSAccessibilityColumnCountAttribute, unicode)
        self.failUnlessIsInstance(NSAccessibilityOrderedByRowAttribute, unicode)
        self.failUnlessIsInstance(NSAccessibilityTitleUIElementAttribute, unicode)
        self.failUnlessIsInstance(NSAccessibilityServesAsTitleForUIElementsAttribute, unicode)
        self.failUnlessIsInstance(NSAccessibilityLinkedUIElementsAttribute, unicode)
        self.failUnlessIsInstance(NSAccessibilitySelectedTextAttribute, unicode)
        self.failUnlessIsInstance(NSAccessibilitySelectedTextRangeAttribute, unicode)
        self.failUnlessIsInstance(NSAccessibilityNumberOfCharactersAttribute, unicode)
        self.failUnlessIsInstance(NSAccessibilityVisibleCharacterRangeAttribute, unicode)
        self.failUnlessIsInstance(NSAccessibilitySharedTextUIElementsAttribute, unicode)
        self.failUnlessIsInstance(NSAccessibilitySharedCharacterRangeAttribute, unicode)
        self.failUnlessIsInstance(NSAccessibilityInsertionPointLineNumberAttribute, unicode)
        self.failUnlessIsInstance(NSAccessibilitySelectedTextRangesAttribute, unicode)
        self.failUnlessIsInstance(NSAccessibilityLineForIndexParameterizedAttribute, unicode)
        self.failUnlessIsInstance(NSAccessibilityRangeForLineParameterizedAttribute, unicode)
        self.failUnlessIsInstance(NSAccessibilityStringForRangeParameterizedAttribute, unicode)
        self.failUnlessIsInstance(NSAccessibilityRangeForPositionParameterizedAttribute, unicode)
        self.failUnlessIsInstance(NSAccessibilityRangeForIndexParameterizedAttribute, unicode)
        self.failUnlessIsInstance(NSAccessibilityBoundsForRangeParameterizedAttribute, unicode)
        self.failUnlessIsInstance(NSAccessibilityRTFForRangeParameterizedAttribute, unicode)
        self.failUnlessIsInstance(NSAccessibilityStyleRangeForIndexParameterizedAttribute, unicode)
        self.failUnlessIsInstance(NSAccessibilityAttributedStringForRangeParameterizedAttribute, unicode)
        self.failUnlessIsInstance(NSAccessibilityFontTextAttribute, unicode)
        self.failUnlessIsInstance(NSAccessibilityForegroundColorTextAttribute, unicode)
        self.failUnlessIsInstance(NSAccessibilityBackgroundColorTextAttribute, unicode)
        self.failUnlessIsInstance(NSAccessibilityUnderlineColorTextAttribute, unicode)
        self.failUnlessIsInstance(NSAccessibilityStrikethroughColorTextAttribute, unicode)
        self.failUnlessIsInstance(NSAccessibilityUnderlineTextAttribute, unicode)
        self.failUnlessIsInstance(NSAccessibilitySuperscriptTextAttribute, unicode)
        self.failUnlessIsInstance(NSAccessibilityStrikethroughTextAttribute, unicode)
        self.failUnlessIsInstance(NSAccessibilityShadowTextAttribute, unicode)
        self.failUnlessIsInstance(NSAccessibilityAttachmentTextAttribute, unicode)
        self.failUnlessIsInstance(NSAccessibilityLinkTextAttribute, unicode)
        self.failUnlessIsInstance(NSAccessibilityMisspelledTextAttribute, unicode)
        self.failUnlessIsInstance(NSAccessibilityFontNameKey, unicode)
        self.failUnlessIsInstance(NSAccessibilityFontFamilyKey, unicode)
        self.failUnlessIsInstance(NSAccessibilityVisibleNameKey, unicode)
        self.failUnlessIsInstance(NSAccessibilityFontSizeKey, unicode)
        self.failUnlessIsInstance(NSAccessibilityMainAttribute, unicode)
        self.failUnlessIsInstance(NSAccessibilityMinimizedAttribute, unicode)
        self.failUnlessIsInstance(NSAccessibilityCloseButtonAttribute, unicode)
        self.failUnlessIsInstance(NSAccessibilityZoomButtonAttribute, unicode)
        self.failUnlessIsInstance(NSAccessibilityMinimizeButtonAttribute, unicode)
        self.failUnlessIsInstance(NSAccessibilityToolbarButtonAttribute, unicode)
        self.failUnlessIsInstance(NSAccessibilityProxyAttribute, unicode)
        self.failUnlessIsInstance(NSAccessibilityGrowAreaAttribute, unicode)
        self.failUnlessIsInstance(NSAccessibilityModalAttribute, unicode)
        self.failUnlessIsInstance(NSAccessibilityDefaultButtonAttribute, unicode)
        self.failUnlessIsInstance(NSAccessibilityCancelButtonAttribute, unicode)
        self.failUnlessIsInstance(NSAccessibilityMenuBarAttribute, unicode)
        self.failUnlessIsInstance(NSAccessibilityWindowsAttribute, unicode)
        self.failUnlessIsInstance(NSAccessibilityFrontmostAttribute, unicode)
        self.failUnlessIsInstance(NSAccessibilityHiddenAttribute, unicode)
        self.failUnlessIsInstance(NSAccessibilityMainWindowAttribute, unicode)
        self.failUnlessIsInstance(NSAccessibilityFocusedWindowAttribute, unicode)
        self.failUnlessIsInstance(NSAccessibilityFocusedUIElementAttribute, unicode)
        self.failUnlessIsInstance(NSAccessibilityOrientationAttribute, unicode)
        self.failUnlessIsInstance(NSAccessibilityVerticalOrientationValue, unicode)
        self.failUnlessIsInstance(NSAccessibilityHorizontalOrientationValue, unicode)
        self.failUnlessIsInstance(NSAccessibilityColumnTitlesAttribute, unicode)
        self.failUnlessIsInstance(NSAccessibilitySearchButtonAttribute, unicode)
        self.failUnlessIsInstance(NSAccessibilitySearchMenuAttribute, unicode)
        self.failUnlessIsInstance(NSAccessibilityClearButtonAttribute, unicode)
        self.failUnlessIsInstance(NSAccessibilityRowsAttribute, unicode)
        self.failUnlessIsInstance(NSAccessibilityVisibleRowsAttribute, unicode)
        self.failUnlessIsInstance(NSAccessibilitySelectedRowsAttribute, unicode)
        self.failUnlessIsInstance(NSAccessibilityColumnsAttribute, unicode)
        self.failUnlessIsInstance(NSAccessibilityVisibleColumnsAttribute, unicode)
        self.failUnlessIsInstance(NSAccessibilitySelectedColumnsAttribute, unicode)
        self.failUnlessIsInstance(NSAccessibilitySortDirectionAttribute, unicode)
        self.failUnlessIsInstance(NSAccessibilityAscendingSortDirectionValue, unicode)
        self.failUnlessIsInstance(NSAccessibilityDescendingSortDirectionValue, unicode)
        self.failUnlessIsInstance(NSAccessibilityUnknownSortDirectionValue, unicode)
        self.failUnlessIsInstance(NSAccessibilityDisclosingAttribute, unicode)
        self.failUnlessIsInstance(NSAccessibilityDisclosedRowsAttribute, unicode)
        self.failUnlessIsInstance(NSAccessibilityDisclosedByRowAttribute, unicode)
        self.failUnlessIsInstance(NSAccessibilityDisclosureLevelAttribute, unicode)
        self.failUnlessIsInstance(NSAccessibilityAllowedValuesAttribute, unicode)
        self.failUnlessIsInstance(NSAccessibilityLabelUIElementsAttribute, unicode)
        self.failUnlessIsInstance(NSAccessibilityLabelValueAttribute, unicode)
        self.failUnlessIsInstance(NSAccessibilityMatteHoleAttribute, unicode)
        self.failUnlessIsInstance(NSAccessibilityMatteContentUIElementAttribute, unicode)
        self.failUnlessIsInstance(NSAccessibilityMarkerUIElementsAttribute, unicode)
        self.failUnlessIsInstance(NSAccessibilityMarkerValuesAttribute, unicode)
        self.failUnlessIsInstance(NSAccessibilityMarkerGroupUIElementAttribute, unicode)
        self.failUnlessIsInstance(NSAccessibilityUnitsAttribute, unicode)
        self.failUnlessIsInstance(NSAccessibilityUnitDescriptionAttribute, unicode)
        self.failUnlessIsInstance(NSAccessibilityMarkerTypeAttribute, unicode)
        self.failUnlessIsInstance(NSAccessibilityMarkerTypeDescriptionAttribute, unicode)
        self.failUnlessIsInstance(NSAccessibilityLeftTabStopMarkerTypeValue, unicode)
        self.failUnlessIsInstance(NSAccessibilityRightTabStopMarkerTypeValue, unicode)
        self.failUnlessIsInstance(NSAccessibilityCenterTabStopMarkerTypeValue, unicode)
        self.failUnlessIsInstance(NSAccessibilityDecimalTabStopMarkerTypeValue, unicode)
        self.failUnlessIsInstance(NSAccessibilityHeadIndentMarkerTypeValue, unicode)
        self.failUnlessIsInstance(NSAccessibilityTailIndentMarkerTypeValue, unicode)
        self.failUnlessIsInstance(NSAccessibilityFirstLineIndentMarkerTypeValue, unicode)
        self.failUnlessIsInstance(NSAccessibilityUnknownMarkerTypeValue, unicode)
        self.failUnlessIsInstance(NSAccessibilityInchesUnitValue, unicode)
        self.failUnlessIsInstance(NSAccessibilityCentimetersUnitValue, unicode)
        self.failUnlessIsInstance(NSAccessibilityPointsUnitValue, unicode)
        self.failUnlessIsInstance(NSAccessibilityPicasUnitValue, unicode)
        self.failUnlessIsInstance(NSAccessibilityUnknownUnitValue, unicode)
        self.failUnlessIsInstance(NSAccessibilityPressAction, unicode)
        self.failUnlessIsInstance(NSAccessibilityIncrementAction, unicode)
        self.failUnlessIsInstance(NSAccessibilityDecrementAction, unicode)
        self.failUnlessIsInstance(NSAccessibilityConfirmAction, unicode)
        self.failUnlessIsInstance(NSAccessibilityPickAction, unicode)
        self.failUnlessIsInstance(NSAccessibilityCancelAction, unicode)
        self.failUnlessIsInstance(NSAccessibilityRaiseAction, unicode)
        self.failUnlessIsInstance(NSAccessibilityShowMenuAction, unicode)
        self.failUnlessIsInstance(NSAccessibilityDeleteAction, unicode)
        self.failUnlessIsInstance(NSAccessibilityMainWindowChangedNotification, unicode)
        self.failUnlessIsInstance(NSAccessibilityFocusedWindowChangedNotification, unicode)
        self.failUnlessIsInstance(NSAccessibilityFocusedUIElementChangedNotification, unicode)
        self.failUnlessIsInstance(NSAccessibilityApplicationActivatedNotification, unicode)
        self.failUnlessIsInstance(NSAccessibilityApplicationDeactivatedNotification, unicode)
        self.failUnlessIsInstance(NSAccessibilityApplicationHiddenNotification, unicode)
        self.failUnlessIsInstance(NSAccessibilityApplicationShownNotification, unicode)
        self.failUnlessIsInstance(NSAccessibilityWindowCreatedNotification, unicode)
        self.failUnlessIsInstance(NSAccessibilityWindowMovedNotification, unicode)
        self.failUnlessIsInstance(NSAccessibilityWindowResizedNotification, unicode)
        self.failUnlessIsInstance(NSAccessibilityWindowMiniaturizedNotification, unicode)
        self.failUnlessIsInstance(NSAccessibilityWindowDeminiaturizedNotification, unicode)
        self.failUnlessIsInstance(NSAccessibilityDrawerCreatedNotification, unicode)
        self.failUnlessIsInstance(NSAccessibilitySheetCreatedNotification, unicode)
        self.failUnlessIsInstance(NSAccessibilityUIElementDestroyedNotification, unicode)
        self.failUnlessIsInstance(NSAccessibilityValueChangedNotification, unicode)
        self.failUnlessIsInstance(NSAccessibilityTitleChangedNotification, unicode)
        self.failUnlessIsInstance(NSAccessibilityResizedNotification, unicode)
        self.failUnlessIsInstance(NSAccessibilityMovedNotification, unicode)
        self.failUnlessIsInstance(NSAccessibilityCreatedNotification, unicode)
        self.failUnlessIsInstance(NSAccessibilityHelpTagCreatedNotification, unicode)
        self.failUnlessIsInstance(NSAccessibilitySelectedTextChangedNotification, unicode)
        self.failUnlessIsInstance(NSAccessibilityRowCountChangedNotification, unicode)
        self.failUnlessIsInstance(NSAccessibilitySelectedChildrenChangedNotification, unicode)
        self.failUnlessIsInstance(NSAccessibilitySelectedRowsChangedNotification, unicode)
        self.failUnlessIsInstance(NSAccessibilitySelectedColumnsChangedNotification, unicode)
        self.failUnlessIsInstance(NSAccessibilityUnknownRole, unicode)
        self.failUnlessIsInstance(NSAccessibilityButtonRole, unicode)
        self.failUnlessIsInstance(NSAccessibilityRadioButtonRole, unicode)
        self.failUnlessIsInstance(NSAccessibilityCheckBoxRole, unicode)
        self.failUnlessIsInstance(NSAccessibilitySliderRole, unicode)
        self.failUnlessIsInstance(NSAccessibilityTabGroupRole, unicode)
        self.failUnlessIsInstance(NSAccessibilityTextFieldRole, unicode)
        self.failUnlessIsInstance(NSAccessibilityStaticTextRole, unicode)
        self.failUnlessIsInstance(NSAccessibilityTextAreaRole, unicode)
        self.failUnlessIsInstance(NSAccessibilityScrollAreaRole, unicode)
        self.failUnlessIsInstance(NSAccessibilityPopUpButtonRole, unicode)
        self.failUnlessIsInstance(NSAccessibilityMenuButtonRole, unicode)
        self.failUnlessIsInstance(NSAccessibilityTableRole, unicode)
        self.failUnlessIsInstance(NSAccessibilityApplicationRole, unicode)
        self.failUnlessIsInstance(NSAccessibilityGroupRole, unicode)
        self.failUnlessIsInstance(NSAccessibilityRadioGroupRole, unicode)
        self.failUnlessIsInstance(NSAccessibilityListRole, unicode)
        self.failUnlessIsInstance(NSAccessibilityScrollBarRole, unicode)
        self.failUnlessIsInstance(NSAccessibilityValueIndicatorRole, unicode)
        self.failUnlessIsInstance(NSAccessibilityImageRole, unicode)
        self.failUnlessIsInstance(NSAccessibilityMenuBarRole, unicode)
        self.failUnlessIsInstance(NSAccessibilityMenuRole, unicode)
        self.failUnlessIsInstance(NSAccessibilityMenuItemRole, unicode)
        self.failUnlessIsInstance(NSAccessibilityColumnRole, unicode)
        self.failUnlessIsInstance(NSAccessibilityRowRole, unicode)
        self.failUnlessIsInstance(NSAccessibilityToolbarRole, unicode)
        self.failUnlessIsInstance(NSAccessibilityBusyIndicatorRole, unicode)
        self.failUnlessIsInstance(NSAccessibilityProgressIndicatorRole, unicode)
        self.failUnlessIsInstance(NSAccessibilityWindowRole, unicode)
        self.failUnlessIsInstance(NSAccessibilityDrawerRole, unicode)
        self.failUnlessIsInstance(NSAccessibilitySystemWideRole, unicode)
        self.failUnlessIsInstance(NSAccessibilityOutlineRole, unicode)
        self.failUnlessIsInstance(NSAccessibilityIncrementorRole, unicode)
        self.failUnlessIsInstance(NSAccessibilityBrowserRole, unicode)
        self.failUnlessIsInstance(NSAccessibilityComboBoxRole, unicode)
        self.failUnlessIsInstance(NSAccessibilitySplitGroupRole, unicode)
        self.failUnlessIsInstance(NSAccessibilitySplitterRole, unicode)
        self.failUnlessIsInstance(NSAccessibilityColorWellRole, unicode)
        self.failUnlessIsInstance(NSAccessibilityGrowAreaRole, unicode)
        self.failUnlessIsInstance(NSAccessibilitySheetRole, unicode)
        self.failUnlessIsInstance(NSAccessibilityHelpTagRole, unicode)
        self.failUnlessIsInstance(NSAccessibilityMatteRole, unicode)
        self.failUnlessIsInstance(NSAccessibilityRulerRole, unicode)
        self.failUnlessIsInstance(NSAccessibilityRulerMarkerRole, unicode)
        self.failUnlessIsInstance(NSAccessibilitySortButtonRole, unicode)
        self.failUnlessIsInstance(NSAccessibilityLinkRole, unicode)
        self.failUnlessIsInstance(NSAccessibilityDisclosureTriangleRole, unicode)
        self.failUnlessIsInstance(NSAccessibilityGridRole, unicode)
        self.failUnlessIsInstance(NSAccessibilityUnknownSubrole, unicode)
        self.failUnlessIsInstance(NSAccessibilityCloseButtonSubrole, unicode)
        self.failUnlessIsInstance(NSAccessibilityZoomButtonSubrole, unicode)
        self.failUnlessIsInstance(NSAccessibilityMinimizeButtonSubrole, unicode)
        self.failUnlessIsInstance(NSAccessibilityToolbarButtonSubrole, unicode)
        self.failUnlessIsInstance(NSAccessibilityTableRowSubrole, unicode)
        self.failUnlessIsInstance(NSAccessibilityOutlineRowSubrole, unicode)
        self.failUnlessIsInstance(NSAccessibilitySecureTextFieldSubrole, unicode)
        self.failUnlessIsInstance(NSAccessibilityStandardWindowSubrole, unicode)
        self.failUnlessIsInstance(NSAccessibilityDialogSubrole, unicode)
        self.failUnlessIsInstance(NSAccessibilitySystemDialogSubrole, unicode)
        self.failUnlessIsInstance(NSAccessibilityFloatingWindowSubrole, unicode)
        self.failUnlessIsInstance(NSAccessibilitySystemFloatingWindowSubrole, unicode)
        self.failUnlessIsInstance(NSAccessibilityIncrementArrowSubrole, unicode)
        self.failUnlessIsInstance(NSAccessibilityDecrementArrowSubrole, unicode)
        self.failUnlessIsInstance(NSAccessibilityIncrementPageSubrole, unicode)
        self.failUnlessIsInstance(NSAccessibilityDecrementPageSubrole, unicode)
        self.failUnlessIsInstance(NSAccessibilitySearchFieldSubrole, unicode)
        self.failUnlessIsInstance(NSAccessibilityTextAttachmentSubrole, unicode)
        self.failUnlessIsInstance(NSAccessibilityTextLinkSubrole, unicode)
        self.failUnlessIsInstance(NSAccessibilityTimelineSubrole, unicode)

if __name__ == "__main__":
    main()
