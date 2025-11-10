package Entity;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.SequenceGenerator;
import javax.persistence.Table;
import javax.validation.constraints.Min;
import javax.validation.constraints.Pattern;
import javax.validation.constraints.Size;

import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;

@Entity
@Table(name = "User_Table")
@Getter
@Setter
@NoArgsConstructor
@AllArgsConstructor
public class User {

	@Id
    @GeneratedValue(strategy = GenerationType.SEQUENCE, generator = "id")
    @SequenceGenerator(name = "id", sequenceName = "seqId", initialValue = 99, allocationSize = 100)
    private int userId;

    @Size(min = 3, max = 20, message = "Username should be between 3 and 20 characters")
    private String userName;

    @Size(min = 8, max = 12, message = "Password must be between 8 and 12 characters")
    @Pattern(
        regexp = "^(?=.*[A-Z])(?=.*[a-z])(?=.*\\d)(?=.*[!@#$%&_-]).{8,12}$",
        message = "Password must contain at least one uppercase letter, one lowercase letter, one digit, and one special character (!@#$%&_-)"
    )
    private String userpassword;

    @Pattern(regexp = "^\\d{10,12}$", message = "Phone number must be between 10 and 12 digits")
    private String userPhno;

    @Min(value = 12, message = "The minimum age is 12")
    private int userAge;

	public User(@Size(min = 3, max = 20, message = "Username should be between 3 and 20 characters") String userName,
			@Size(min = 8, max = 12, message = "Password must be between 8 and 12 characters") @Pattern(regexp = "^(?=.*[A-Z])(?=.*[a-z])(?=.*\\d)(?=.*[!@#$%&_-]).{8,12}$", message = "Password must contain at least one uppercase letter, one lowercase letter, one digit, and one special character (!@#$%&_-)") String userpassword,
			@Pattern(regexp = "^\\d{10,12}$", message = "Phone number must be between 10 and 12 digits") String userPhno,
			@Min(value = 12, message = "The minimum age is 12") int userAge) {
		super();
		this.userName = userName;
		this.userpassword = userpassword;
		this.userPhno = userPhno;
		this.userAge = userAge;
	}
    
    
}
