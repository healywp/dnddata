#' @title  D&D character tables
#' @name tables
#' @aliases dnd_chars_unique dnd_chars_all dnd_chars_singleclass dnd_chars_multiclass
#' @seealso  \code{\link{dnd_chars_unique_list)}}, \code{\link{dnd_chars_all_list}}, \code{\link{dnd_chars_singleclass_list}}, \code{\link{dnd_chars_multiclass_list}}
#' @description \code{dnd_chars_all}, \code{dnd_chars_unique},
#' \code{dnd_chars_singleclass} and \code{dnd_chars_multiclass} \code{data.frame}s
#'  contains character data submitted to \url{https://oganm.com/shiny/printSheetApp} and
#' \url{https://oganm.com/shiny/interactiveSheet}.
#'
#' These tables includes the same data that is included in the \code{list} objects in this package.
#' Some fields with complex information such as \code{spells} might be easier to
#' deal with using the \code{list} objects.
#'
#' \itemize{
#'     \item{dnd_chars_all: All characters. May contain duplicates}
#'     \item{dnd_chars_unique: Filtered version of \code{dnd_chars_all} to remove possible duplicates. Highest level variant of the characters are kept}
#'     \item{dnd_chars_singleclass: Subset of \code{dnd_chars_unique} that only includes single classed characters}
#'     \item{dnd_chars_multiclass: Subset of \code{dnd_chars_unique} that only includes multiclassed characters}
#' }
#'
#' @format A data frame with 35 variables:
#' \itemize{
#'     \item{ip: A shortened hash of the IP address of the submitter}
#'     \item{finger: A shortened hash of the browser fingerprint of the submitter}
#'     \item{hash: Hash of the input file. I use this to find the original files. Useless for everyone else}
#'     \item{name: A shortened hash of character names}
#'     \item{race: Race of the character as coded by the app. May be unclear as the app inconsistently codes race/subrace information. See \code{processedRace}}
#'     \item{background: Background as it comes out of the application.}
#'     \item{date: Time & date of input. Dates before 2018-04-16 are unreliable as some has accidentally changed while moving files around.}
#'     \item{class: Class and level. Different classes are separated by | when needed.}
#'     \item{justClass: Class without level. Different classes are separated by | when needed.}
#'     \item{subclass: Subclass. Might be missing if the character is low level. Different classes are separated by | when needed.}
#'     \item{level: Total level}
#'     \item{feats: Feats chosen. Mutliple feats are separated by | when needed}
#'     \item{HP: Total HP}
#'     \item{AC: AC score}
#'     \item{Str, Dex, Con, Int, Wis, Cha: Ability score modifiers}
#'     \item{alignment: Alignment free text field. Since it's a free text field, it includes alignments written in many forms. See \code{processedAlignment}, \code{good} and \code{lawful} to get the standardized alignment data.}
#'     \item{skills: List of proficient skills. Skills are separated by |.}
#'     \item{weapons: List of weapons, separated by |. This is a free text field. See \code{processedWeapons} for the standardized version}
#'     \item{spells: List of spells, separated by |. Each spell has its level next to it separated by *s. This is a free text field. See \code{processedSpells} for the standardized version}
#'     \item{castingStat: Casting stat as entered by the user. The format allows one casting stat so this is likely wrong if the character has different spellcasting classes. Also every character has a casting stat even if they are not casters due to the data format.}
#'     \item{choices: Character building choices. This field information about character properties such as fighting styles and skills chosen for expertise. Different choice types are separated by | when needed. The choice data is written as name of choice followed by a / followed by the choices that are separated by *s}
#'     \item{country: The origin of the submitter's IP}
#'     \item{countryCode: 2 letter country code}
#'     \item{processedAlignment: Standardized version of the \code{alignment} column. I have manually matched each non standard spelling of alignment to its correct form. First character represents lawfulness (L, N, C), second one goodness (G,N,E). An empty string means alignment wasn't written or unclear.}
#'     \item{good, lawful: Isolated columns for goodness and lawfulness}
#'     \item{processedRace: I have gone through the way \code{race} column is filled by the app and asigned them to correct races. Also includes some common races that are not natively supported such as warforged and changelings. If empty, indiciates a homebrew race not natively supported by the app.}
#'     \item{processedSpells: Formatting is same as \code{spells}. Standardized version of the \code{spells} column. Spells are matched to an official list using string similarity and some hardcoded rules.}
#'     \item{processedWeapons: Formatting is same as \code{weapons}. Standardized version of the \code{weapons} column. Created like the \code{processedSpells} column.}
#'     \item{levelGroup: Splits levels into groups. The groups represent the common ASI levels}
#'     \item{alias: A friendly alias that correspond to each uniqe \code{name}}
#' }
NULL

#' @title D&D character lists
#' @name lists
#' @aliases dnd_chars_unique_list dnd_chars_all_list dnd_chars_singleclass_list dnd_chars_multiclass_list
#' @seealso  \code{\link{dnd_chars_unique)}}, \code{\link{dnd_chars_all}}, \code{\link{dnd_chars_singleclass}}, \code{\link{dnd_chars_multiclass}}
#' @description \code{dnd_chars_all_list}, \code{dnd_chars_unique_list},
#' \code{dnd_chars_singleclass_list} and \code{dnd_chars_multiclass_list} \code{list}s
#'  contains character data submitted to \url{https://oganm.com/shiny/printSheetApp} and
#' \url{https://oganm.com/shiny/interactiveSheet}.
#'
#' These lists include the same data that is included in the \code{data.frame}
#' objects in this package with complex data fields such as spells are split into their
#' components for easier access.
#'
#' \itemize{
#'     \item{dnd_chars_all_list: All characters. May contain duplicates}
#'     \item{dnd_chars_unique_list: Filtered version of \code{dnd_chars_all} to remove possible duplicates. Highest level variant of the characters are kept}
#'     \item{dnd_chars_singleclass_list: Subset of \code{dnd_chars_unique} that only includes single classed characters}
#'     \item{dnd_chars_multiclass_list: Subset of \code{dnd_chars_unique} that only includes multiclassed characters}
#' }
NULL
