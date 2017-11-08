namespace ApplicationPlanCadre.Models
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;
    using System.ComponentModel.DataAnnotations.Schema;
    using System.Data.Entity.Spatial;

    [Table("EnonceCompetence")]
    public partial class EnonceCompetence
    {
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2214:DoNotCallOverridableMethodsInConstructors")]
        public EnonceCompetence()
        {
            ContexteRealisation = new HashSet<ContexteRealisation>();
            ElementCompetence = new HashSet<ElementCompetence>();
        }

        [Key]
        public int idCompetence { get; set; }

        [Required]
        [StringLength(4)]
        [Display(Name = "Code de la comp�tence")]
        [RegularExpression("^[0-9][0-9][0-9][A-Za-z]$", ErrorMessage = "Le code est invalide, il doit �tre compos� de 3 chiffres suivis d'une lettre.")]
        public string codeCompetence { get; set; }

        [Column("enonceCompetence")]
        [Required]
        [StringLength(300)]
        [Display(Name = "Description")]
        public string enonceCompetence1 { get; set; }

        [StringLength(30)]
        public string motClef { get; set; }

        [Display(Name = "Obligatoire")]
        public bool obligatoire { get; set; }

        [Display(Name = "Actif")]
        public bool actif { get; set; }

        [StringLength(200)]
        public string commentaire { get; set; }

        public int idProgramme { get; set; }

        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<ContexteRealisation> ContexteRealisation { get; set; }

        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<ElementCompetence> ElementCompetence { get; set; }

        public virtual Programme Programme { get; set; }
    }
}
